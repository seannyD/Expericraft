# Expericraft

A Minecraft mod for running communication game experiments.


## Progress

Mods are made with MCreator for Minecraft 1.11.2

Mod isn't working on the Spigot server.  Blocks appear but then dissappear immediately.  Prob because Spigot and Forge are different 

Mod will work on single player, then we can direct connect.  But this won't let us track block placement or clear blocks with a script.  And we can't protect the grass etc.

We can use the old setup, but then players can see what they're carrying.

Forge server isn't working with the mod for some reason.

Solution: Use pure forge mod in single player mode with direct sharing, writing block log to local file.  

Can just run: ./gradlew clean build

Then look for jar file in: MCreatornew/forge/build/libs/

## Features

Current features:

-  New coloured blocks (Red, Green, Blue, Orange, Cyan, Yellow, Black, Pink, White, Brown)
-  Other players can't see which blocks their partners are carrying (invisible blocks are carried and when placed are replaced immediately with "Ground" blocks).
-  Logging of block placement and deletion to local file.
-  Set experimental mode on.

### /experiment [off]

Has the following effects

-  Weather to clear
-  Time to noon
-  Mode to survival
-  Difficulty to peaceful
-  Kills all mobs within a radius
-  Sets hardness very high for oak fences and gates, grass and dirt.

"/experiment off" will turn off the experimental settings.

### /logblocks [filename]

Starts logging blocks in the given filename (should not include folder path).

### /clearblocks

Clears all mod blocks

## TODO


-  Copy world to new world (or make new one)
-  Surround area with cobblestone so that grass doesn't grow.
-  /clearblocks shouldn't necessarily clear blocks used as position markers (black and white) [WRITTEN: NEED TO TEST].
-  Set time to constantly noon
-  Reset player locations and give appropriate blocks (use an in-game command block)
-  Infinite supply of blocks?
-  Update run instructions
-  Update block designs
-  Make checklist
-  Participant script