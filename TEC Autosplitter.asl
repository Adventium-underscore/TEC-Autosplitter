/*
 * Current supported versions:
 * 1.3.4+
 */
state("TetrisEffect-Win64-Shipping") {}
state("TetrisEffect-WinGDK-Shipping") {}

/*
 * Settings for LiveSplit.
 * If Split on Area is off, the autosplitter will still start and reset the timer,
 * and split at the end of the run. This works when you have no splits.
 */
startup {
	print("[TE:C Autosplitter] Startup");

	settings.Add("area", true, "Split On Area");
	settings.SetToolTip("area", "Automatically splits on every area transition.");

	settings.Add("level", true, "Split On Level", "area");
	settings.SetToolTip("level", "Automatically splits on every level transition.");
}

// Find the game version when it launches
init {
	print("[TE:C Autosplitter] Game launch detected, initializing...");

	// Find a specific mov instruction that conveniently moves data to the base address we use.
	var target = new SigScanTarget(3, "4C 8B 0D ????????", "45 33 FF")
								  {OnFound = (p, s, addr) => addr + 0x4 + p.ReadValue<int>(addr)};
	var baseAddr = new SignatureScanner(game, modules.First().BaseAddress, modules.First().ModuleMemorySize).Scan(target);
	if (baseAddr == IntPtr.Zero) throw new NullReferenceException();
	// From this base offset, use pointer paths to find the values we need.
	vars.watchers = new MemoryWatcherList {
		new MemoryWatcher<int>(new DeepPointer(baseAddr, 0x8, 0x800, 0xA10, 0x328, 0x2C0))
											  {Name = "ingame", FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull},
		new MemoryWatcher<float>(new DeepPointer(baseAddr, 0x8, 0x800, 0xA10, 0x328, 0x2C0, 0x10C))
												{Name = "timer", FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull},
		new MemoryWatcher<int>(new DeepPointer(baseAddr, 0x8, 0x800, 0xA10, 0x328, 0x2C0, 0x8, 0x254))
											  {Name = "level", FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull},
		new MemoryWatcher<int>(new DeepPointer(baseAddr, 0x8, 0x800, 0xA10, 0x328, 0x2C0, 0x120))
											  {Name = "lines", FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull}
	};
	print("[TE:C Autosplitter] Initialization complete.");
}

// Update variables, assign to current for cleaner code
update {
    vars.watchers.UpdateAll(game);
    current.ingame = vars.watchers["ingame"].Current;
    current.timer = vars.watchers["timer"].Current;
    current.level = vars.watchers["level"].Current;
    current.lines = vars.watchers["lines"].Current;
}

// Start the timer if we are loaded into a level and it's level 0
start {
	if(current.ingame != 0 && current.level == 0) {
		print("[TE:C Autosplitter] Timer started.");
		return true;
	}
}

// Reset if we ever aren't loaded into a level
reset {
	if(current.ingame == 0) {
		print("[TE:C Autosplitter] Timer reset.");
		return true;
	}
}

// Exactly what you'd expect
split {
	if(current.level != old.level) {
		// Split on level
		if(settings["level"]) {
			print("[TE:C Autosplitter] Timer split (level).");
			return true;
		}
		// Split on area
		else if(settings["area"] && (current.level == 3 || current.level == 7 || current.level == 11
		                    || current.level == 16 || current.level == 21 || current.level == 26)) {
			print("[TE:C Autosplitter] Timer split (area).");
			return true;
		}
	}

	// Final split
	if(current.lines >= 90) {
		print("[TE:C Autosplitter] Timer split (final).");
		return true;
	}
}

// Timer never counts up on its own, and instead only syncs to the in-game timer
isLoading { return true; }

// Because the timer never counts on its own, this will always match IGT exactly
gameTime {
	// This ensures the timer doesn't keep counting past the last line in case of extra splits
	if(current.lines < 90) {
		return TimeSpan.FromSeconds(current.timer);
	}
}
