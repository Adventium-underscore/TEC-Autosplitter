/*
 * Current supported versions:
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
 
state("TetrisEffect-WinGDK-Shipping", "Win10 1.3.1")
{
	int ingame  : 0x500E988, 0x8, 0x838, 0x960, 0x328, 0x2C0;
	float timer : 0x500E988, 0x8, 0x838, 0x960, 0x328, 0x2C0, 0x10C;
	int lines   : 0x500E988, 0x8, 0x838, 0x960, 0x328, 0x2C0, 0x120;
	int level   : 0x500E988, 0x8, 0x838, 0x960, 0x328, 0x2C0, 0x8, 0x254;
}
state("TetrisEffect-Win64-Shipping", "Steam 1.3.1")
{
	int ingame  : 0x4DBCF98, 0x8, 0x838, 0x960, 0x328, 0x2C0;
	float timer : 0x4DBCF98, 0x8, 0x838, 0x960, 0x328, 0x2C0, 0x10C;
	int lines   : 0x4DBCF98, 0x8, 0x838, 0x960, 0x328, 0x2C0, 0x120;
	int level   : 0x4DBCF98, 0x8, 0x838, 0x960, 0x328, 0x2C0, 0x8, 0x254;
}
state("TetrisEffect-Win64-Shipping", "EGS 1.3.1")
{
	int ingame  : 0x4D79898, 0x8, 0x838, 0x960, 0x328, 0x2C0;
	float timer : 0x4D79898, 0x8, 0x838, 0x960, 0x328, 0x2C0, 0x10C;
	int lines   : 0x4D79898, 0x8, 0x838, 0x960, 0x328, 0x2C0, 0x120;
	int level   : 0x4D79898, 0x8, 0x838, 0x960, 0x328, 0x2C0, 0x8, 0x254;
}
 
state("TetrisEffect-WinGDK-Shipping", "Win10 1.3.0")
{
	int ingame  : 0x500C648, 0x8, 0x838, 0x958, 0x328, 0x2C0;
	float timer : 0x500C648, 0x8, 0x838, 0x958, 0x328, 0x2C0, 0x10C;
	int lines   : 0x500C648, 0x8, 0x838, 0x958, 0x328, 0x2C0, 0x120;
	int level   : 0x500C648, 0x8, 0x838, 0x958, 0x328, 0x2C0, 0x8, 0x254;
}
state("TetrisEffect-Win64-Shipping", "Steam 1.3.0")
{
	int ingame  : 0x4DBD0B8, 0x8, 0x838, 0x958, 0x328, 0x2C0;
	float timer : 0x4DBD0B8, 0x8, 0x838, 0x958, 0x328, 0x2C0, 0x10C;
	int lines   : 0x4DBD0B8, 0x8, 0x838, 0x958, 0x328, 0x2C0, 0x120;
	int level   : 0x4DBD0B8, 0x8, 0x838, 0x958, 0x328, 0x2C0, 0x8, 0x254;
}
state("TetrisEffect-Win64-Shipping", "EGS 1.3.0")
{
	int ingame  : 0x4D59558, 0x8, 0x838, 0x958, 0x328, 0x2C0;
	float timer : 0x4D59558, 0x8, 0x838, 0x958, 0x328, 0x2C0, 0x10C;
	int lines   : 0x4D59558, 0x8, 0x838, 0x958, 0x328, 0x2C0, 0x120;
	int level   : 0x4D59558, 0x8, 0x838, 0x958, 0x328, 0x2C0, 0x8, 0x254;
}
 
state("TetrisEffect-WinGDK-Shipping", "Win10 1.2.9")
{
	int ingame  : 0x5007358, 0x8, 0x820, 0x950, 0x328, 0x2C0;
	float timer : 0x5007358, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x10C;
	int lines   : 0x5007358, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x120;
	int level   : 0x5007358, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x8, 0x254;
}
state("TetrisEffect-Win64-Shipping", "Steam 1.2.9")
{
	int ingame  : 0x4DB9FB8, 0x8, 0x820, 0x950, 0x328, 0x2C0;
	float timer : 0x4DB9FB8, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x10C;
	int lines   : 0x4DB9FB8, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x120;
	int level   : 0x4DB9FB8, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x8, 0x254;
}
state("TetrisEffect-Win64-Shipping", "EGS 1.2.9")
{
	int ingame  : 0x4D78978, 0x8, 0x820, 0x950, 0x328, 0x2C0;
	float timer : 0x4D78978, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x10C;
	int lines   : 0x4D78978, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x120;
	int level   : 0x4D78978, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x8, 0x254;
}

state("TetrisEffect-WinGDK-Shipping", "Win10 1.2.8")
{
	/* Unsupported */
}
state("TetrisEffect-Win64-Shipping", "Steam 1.2.8")
{
	int ingame  : 0x4D957B8, 0x8, 0x820, 0x950, 0x328, 0x2C0;
	float timer : 0x4D957B8, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x10C;
	int lines   : 0x4D957B8, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x120;
	int level   : 0x4D957B8, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x8, 0x254;
}
state("TetrisEffect-Win64-Shipping", "EGS 1.2.8")
{
	int ingame  : 0x4D53178, 0x8, 0x820, 0x950, 0x328, 0x2C0;
	float timer : 0x4D53178, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x10C;
	int lines   : 0x4D53178, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x120;
	int level   : 0x4D53178, 0x8, 0x820, 0x950, 0x328, 0x2C0, 0x8, 0x254;
}

state("TetrisEffect-WinGDK-Shipping", "Win10 1.2.7")
{
	int ingame  : 0x50030C8, 0x8, 0x820, 0x948, 0x328, 0x2C0;
	float timer : 0x50030C8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x10C;
	int lines   : 0x50030C8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x120;
	int level   : 0x50030C8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x8, 0x254;
}
state("TetrisEffect-Win64-Shipping", "Steam 1.2.7")
{
	int ingame  : 0x4D925F8, 0x8, 0x820, 0x948, 0x328, 0x2C0;
	float timer : 0x4D925F8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x10C;
	int lines   : 0x4D925F8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x120;
	int level   : 0x4D925F8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x8, 0x254;
}
state("TetrisEffect-Win64-Shipping", "EGS 1.2.7")
{
	int ingame  : 0x4D50FB8, 0x8, 0x820, 0x948, 0x328, 0x2C0;
	float timer : 0x4D50FB8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x10C;
	int lines   : 0x4D50FB8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x120;
	int level   : 0x4D50FB8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x8, 0x254;
}

state("TetrisEffect-WinGDK-Shipping", "Win10 1.2.6")
{
	int ingame  : 0x5001F88, 0x8, 0x820, 0x948, 0x328, 0x2C0;
	float timer : 0x5001F88, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x10C;
	int lines   : 0x5001F88, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x120;
	int level   : 0x5001F88, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x8, 0x254;
}
state("TetrisEffect-Win64-Shipping", "Steam 1.2.6")
{
	int ingame  : 0x4D914B8, 0x8, 0x820, 0x948, 0x328, 0x2C0;
	float timer : 0x4D914B8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x10C;
	int lines   : 0x4D914B8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x120;
	int level   : 0x4D914B8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x8, 0x254;
}
state("TetrisEffect-Win64-Shipping", "EGS 1.2.6")
{
	int ingame  : 0x4D4FE78, 0x8, 0x820, 0x948, 0x328, 0x2C0;
	float timer : 0x4D4FE78, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x10C;
	int lines   : 0x4D4FE78, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x120;
	int level   : 0x4D4FE78, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x8, 0x254;
}

state("TetrisEffect-WinGDK-Shipping", "Win10 1.2.5")
{
	int ingame  : 0x5000F78, 0x8, 0x820, 0x948, 0x328, 0x2C0;
	float timer : 0x5000F78, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x10C;
	int lines   : 0x5000F78, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x120;
	int level   : 0x5000F78, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x8, 0x254;
}
state("TetrisEffect-Win64-Shipping", "Steam 1.2.5")
{
	int ingame  : 0x4D904B8, 0x8, 0x820, 0x948, 0x328, 0x2C0;
	float timer : 0x4D904B8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x10C;
	int lines   : 0x4D904B8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x120;
	int level   : 0x4D904B8, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x8, 0x254;
}
state("TetrisEffect-Win64-Shipping", "EGS 1.2.5")
{
	int ingame  : 0x4D4DE78, 0x8, 0x820, 0x948, 0x328, 0x2C0;
	float timer : 0x4D4DE78, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x10C;
	int lines   : 0x4D4DE78, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x120;
	int level   : 0x4D4DE78, 0x8, 0x820, 0x948, 0x328, 0x2C0, 0x8, 0x254;
}

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

	// Find the core module. Win10 has a different name.
	var mainModule = modules.Single(x => (String.Equals(x.ModuleName, "TetrisEffect-WinGDK-Shipping.exe")
	                                   || String.Equals(x.ModuleName, "TetrisEffect-Win64-Shipping.exe")));

	// Check version by comparing the module size
	var moduleSize = mainModule.ModuleMemorySize;
	print("[TE:C Autosplitter] Module detected: " + mainModule.ModuleName + " with size " + moduleSize);
	if(String.Equals(mainModule.ModuleName, "TetrisEffect-Win64-Shipping.exe"))
	{
		if(moduleSize == 86450176)
		{
			version = "Steam 1.3.1";
			print("[TE:C Autosplitter] Detected Steam 1.3.1 game version");
		}
		else if(moduleSize == 86417072)
		{
			version = "EGS 1.3.1";
			print("[TE:C Autosplitter] Detected EGS 1.3.1 game version");
		}
		
		else if(moduleSize == 86454272)
		{
			version = "Steam 1.3.0";
			print("[TE:C Autosplitter] Detected Steam 1.3.0 game version");
		}
		else if(moduleSize == 86016000)
		{
			version = "EGS 1.3.0";
			print("[TE:C Autosplitter] Detected EGS 1.3.0 game version");
		}
		
		else if(moduleSize == 86441984)
		{
			version = "Steam 1.2.9";
			print("[TE:C Autosplitter] Detected Steam 1.2.9 game version");
		}
		else if(moduleSize == 86151168)
		{
			version = "EGS 1.2.9";
			print("[TE:C Autosplitter] Detected EGS 1.2.9 game version");
		}
		
		else if(moduleSize == 86282240)
		{
			version = "Steam 1.2.8";
			print("[TE:C Autosplitter] Detected Steam 1.2.8 game version");
		}
		else if(moduleSize == 85991424)
		{
			version = "EGS 1.2.8";
			print("[TE:C Autosplitter] Detected EGS 1.2.8 game version");
		}
		
		else if(moduleSize == 86269952)
		{
			version = "Steam 1.2.7";
			print("[TE:C Autosplitter] Detected Steam 1.2.7 game version");
		}
		else if(moduleSize == 85983232)
		{
			version = "EGS 1.2.7";
			print("[TE:C Autosplitter] Detected EGS 1.2.7 game version");
		}
		
		else if(moduleSize == 86265856)
		{
			version = "Steam 1.2.6";
			print("[TE:C Autosplitter] Detected Steam 1.2.6 game version");
		}
		else if(moduleSize == 85979136)
		{
			version = "EGS 1.2.6";
			print("[TE:C Autosplitter] Detected EGS 1.2.6 game version");
		}
		
		else if(moduleSize == 86261760)
		{
			version = "Steam 1.2.5";
			print("[TE:C Autosplitter] Detected Steam 1.2.5 game version");
		}
		else if(moduleSize == 85970944)
		{
			version = "EGS 1.2.5";
			print("[TE:C Autosplitter] Detected EGS 1.2.5 game version");
		}
	}
	else if(String.Equals(mainModule.ModuleName, "TetrisEffect-WinGDK-Shipping.exe"))
	{
		if(moduleSize == 89022464)
		{
			version = "Win10 1.3.1";
			print("[TE:C Autosplitter] Detected Win10 1.3.1 game version");
		}
		
		else if(moduleSize == 89014272)
		{
			version = "Win10 1.3.0";
			print("[TE:C Autosplitter] Detected Win10 1.3.0 game version");
		}
		
		else if(moduleSize == 88993792)
		{
			version = "Win10 1.2.9";
			print("[TE:C Autosplitter] Detected Win10 1.2.9 game version");
		}
		
		else if(moduleSize == 88977408)
		{
			version = "Win10 1.2.7";
			print("[TE:C Autosplitter] Detected Win10 1.2.7 game version");
		}
		
		else if(moduleSize == 88969216)
		{
			version = "Win10 1.2.6";
			print("[TE:C Autosplitter] Detected Win10 1.2.6 game version");
		}
		
		else if(moduleSize == 88965120)
		{
			version = "Win10 1.2.5";
			print("[TE:C Autosplitter] Detected Win10 1.2.5 game version");
		}
	}
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
