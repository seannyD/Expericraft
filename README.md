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
-  Infinite supply of new blocks
-  Other players can't see which blocks their partners are carrying (invisible blocks are carried and when placed are replaced immediately with "Ground" blocks).
-  Logging of block placement and deletion to local file.
-  Set experimental mode on.

### /experiment [off | hard] [hardness]

`\experiment` Has the following effects

-  Weather to clear
-  Time to noon
-  Mode to survival
-  Difficulty to peaceful
-  Kills all mobs within a radius
-  Sets hardness very high for oak fences and gates, grass and dirt.
-  Sets the variable `mcreator_experimentalConditions.infiniteModBlocks` so that number of blocks in inventory don't decrease when placed. (not working currently)
-  Sets the black and white blocks to very hard.
-  Sets the rest of the custom blocks to soft (value 0.8, takes about 1.25 seconds to break by hand)

`\experiment hard` will do all of the above, and set the custom blocks (except white and black) to a hardness of 2.4 (takes about 3.5 seconds to break by hand).  You can enter a custom hardness for custom blocks using e.g. `\experiment hard 1.5`, which will set a block's hardness to 1.5.

`/experiment off` will turn off the experimental settings.



### /logblocks [filename]

Starts logging blocks in the given filename (should not include folder path).

### /clearblocks [all]

Clears all mod blocks, except black and white.

/clearblocks all will remove all mod blocks

### NoonBlock

When placed in the world, the NoonBlock constantly sets the time to noon (every 100 ticks).  Also, about every 2 minutes it will kill all mobs within a radius of 200 blocks.

If noon block is lost, then you can use command searches to destroy it:
[EXAMPLE TODO]

## TODO


-  Copy world to new world (or make new one)
-  Move overlay display
-  Surround area with cobblestone so that grass doesn't grow.
-  Set time to constantly noon [Done with NoonBlock: NEED TO TEST (tick rate?).]
-  Reset player locations and give appropriate blocks (use an in-game command block)
-  Infinite supply of blocks? [DONE FOR GREEN: NEED TO TEST, see infiniteModBlocks]
-  Update run instructions
-  Update block designs
-  Make checklist
-  Participant script


-  Hide heart and hunger bars?  see https://gaming.stackexchange.com/questions/166790/making-hunger-bar-invisible-in-vanilla-minecraft