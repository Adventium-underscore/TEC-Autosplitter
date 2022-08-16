/*
 * Current supported versions:
 * 1.3.2.1 EGS (Exclusive update)
 * 1.3.2 Win10/Steam/EGS
 * 1.3.1 Win10/Steam/EGS
 * 1.3.0 Win10/Steam/EGS
 * 1.2.9 Win10/Steam/EGS
 * 1.2.8 Steam/EGS
 * 1.2.7 Win10/Steam/EGS
 * 1.2.6 Win10/Steam/EGS
 * 1.2.5 Win10/Steam/EGS
 * 
 * 1.2.8 Win10 is not supported because the module size is the same as 1.2.9 Win10
 * I could check the hash if I really wanted to but module size works well enough
 * and the game should be updated anyway.
 * 
 * "ingame" is used to check if we are currently loaded into a level by comparing to 0
 * This works because a pointer path returns 0 when it's unresolved
 * We can't reuse a different variable because those all use 0 as a normal value
 */
 
state("TetrisEffect-Win64-Shipping") {}
state("TetrisEffect-WinGDK-Shipping") {}

/*
 * Settings for LiveSplit.
 * If Split on Area is off, the autosplitter will still start and reset the timer,
 * and split at the end of the run. This works when you have no splits.
 */
startup
{
	print("[TE:C Autosplitter] Startup");

	settings.Add("area", true, "Split On Area");
	settings.SetToolTip("area", "Automatically splits on every area transition.");

	settings.Add("level", true, "Split On Level", "area");
	settings.SetToolTip("level", "Automatically splits on every level transition.");
}

// Find the game version when it launches
init
{
	print("[TE:C Autosplitter] Game launch detected, initializing");

	var ptr = new SignatureScanner(game, modules.First().BaseAddress, modules.First().ModuleMemorySize).Scan(new SigScanTarget(3, "4C 8B 0D ???????? 45 33 FF") { OnFound = (p, s, addr) => addr + 0x4 + p.ReadValue<int>(addr) });
	if (ptr == IntPtr.Zero) throw new NullReferenceException();
	vars.watchers = new MemoryWatcherList{
		new MemoryWatcher<int>(new DeepPointer(ptr, 0x8, 0x838, 0x960, 0x328, 0x2C0)) { Name = "ingame", FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<int>(new DeepPointer(ptr, 0x8, 0x838, 0x960, 0x328, 0x2C0, 0x120)) { Name = "lines", FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<int>(new DeepPointer(ptr, 0x8, 0x838, 0x960, 0x328, 0x2C0, 0x8, 0x254)) { Name = "level", FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<float>(new DeepPointer(ptr, 0x8, 0x838, 0x960, 0x328, 0x2C0, 0x10C)) { Name = "timer", FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
	};
}

update
{
    vars.watchers.UpdateAll(game);
    current.ingame = vars.watchers["ingame"].Current;
    current.lines = vars.watchers["lines"].Current;
    current.level = vars.watchers["level"].Current;
    current.timer = vars.watchers["timer"].Current;
}

// Start the timer if we are loaded into a level and it's level 0
start
{
	if(current.ingame != 0 && current.level == 0)
	{
		print("[TE:C Autosplitter] Timer started");
		return true;
	}
}

// Reset if we ever aren't loaded into a level
reset
{
	if(current.ingame == 0)
	{
		print("[TE:C Autosplitter] Timer reset");
		return true;
	}
}

// Exactly what you'd expect
split
{
	if(current.level != old.level) {
		// Split on level
		if(settings["level"])
		{
			print("[TE:C Autosplitter] Timer split (level)");
			return true;
		}

		// Split on area
		if(settings["area"] && (current.level == 3 || current.level == 7 || current.level == 11
		                    || current.level == 16 || current.level == 21 || current.level == 26))
		{
			print("[TE:C Autosplitter] Timer split (area)");
			return true;
		}
	}

	// Final split
	if(current.lines >= 90)
	{
		print("[TE:C Autosplitter] Timer split (final)");
		return true;
	}
}

// Timer never counts up on its own, and instead only syncs to the in-game timer
isLoading
{
	return true;
}

// Because the timer never counts on its own, this will always match IGT exactly
gameTime
{
	// This ensures the timer doesn't keep counting past the last line in case of extra splits
	if(current.lines < 90)
	{
		return TimeSpan.FromSeconds(current.timer);
	}
}
