# Problems

Mods are made with MCreator.

modid.jar: first mod.  Built for minecraft 1.8.9.  
Expericraft4.jar: new mod.  Built for minecraft 1.11.2.

Mod isn't working on the Spigot server.  Blocks appear but then dissappear immediately.  Prob because Spigot and Forge are different 

Mod will work on single player, then we can direct connect.  But this won't let us track block placement or clear blocks with a script.  And we can't protect the grass etc.

We can use the old setup, but then players can see what they're carrying.

Forge server isn't working with the mod for some reason.

Solution: use pure forge mod in single player mode, writing block log to local file.  Current MCreator class GreeBlockinvisible implements this, (need to include log of deleting, and duplicating entries for some reason?).  But I'm having trouble compiling the jar file.  Maybe the MCreator grade compile actually makes one: MCreatornew/forge/build/libs/modid-1.0.jar

Can just run: ./gradlew clean build

I've now re-written the mod in MCreator



# Installation

## Install java

Windows: Download JRE 8.

Mac: 
see [https://gist.github.com/johan/10590467](https://gist.github.com/johan/10590467)

# Install Minecraft on player computers

Sean can provide the Minecraft usernames.

## Configure the graphics

We don't need fancy graphics (which can slow down the game), especially since we're also running screen capture.

Under Options > Video Settings, set the following:

Render Distance: 8 chunks
Max Framerate: 60 FPS
View Bobbing: off
Clouds: off

## Configure the player skins

Mincraft starts with a default player skin, which makes both players look identical.  This can be confusing for the video, so you can change your skin by logging into your Mojang account.

TODO

## Install Forge

We're using Forge 1.11.2

Go to the Forge website: [http://files.minecraftforge.net/maven/net/minecraftforge/forge/index_1.11.2.html](http://files.minecraftforge.net/maven/net/minecraftforge/forge/index_1.11.2.html)

Download the installer and run it, choosing "install client".

Start the minecraft launcher and log in.  Click the menu icon in the top right, and then select "Launch options".  There should be a new profile called "forge".  If you click it, you'll see some info, including the location of the minecraft directory.

(on macs: something like `~/Library/Application Support/minecraft/`)

Go back to the main menu (click the Minecraft logo at the top).  Next to the "Play" button, there should be an upwards arrow.  Click it and select the forge profile.

Click "Play", and the forge mod will initiate.  When minecraft starts, you should see a message in the bottom left like "Powered by Forge ...".

Close minecraft.

### Add the ColourBlocks mod

Copy the file `modid.jar` into the mod folder inside the miecraft directory:

First, open the minecraft folder.  The directory is sometimes hidden, so you might have to open it directly.  On macs, open a Finder window, and select "Go" > "Go to folder ..." then type in the name of the minecraft directory.

Now in the minecraft directory there should be a folder called 'mods'.  Copy the file `modid.jar` into that folder.

Run minecraft again, making sure to run the Forge profile.  Now in the main minecraft menu there is an option "Mods".  If you click it you should see a number of mods including one called "TestEnvironmentMod"

# Installation on the server computer

TODO: No need for server now!

## Spigot server

Install a Spigot server on the server computer (not needed on the player computers).

We're using spigot 1.11.2.  see [https://www.spigotmc.org/wiki/buildtools/](https://www.spigotmc.org/wiki/buildtools/)

Download BuildTools.jar to the folder where you want to store the server files.  Because our mod uses Minecraft 1.11, you must run:

`java -jar BuildTools.jar --rev 1.11.2`

## Add a spigot executable file

Add a file called "runSpigot.sh" in the top Spigot directory with the following code (adjusting for the name of the spigot jar):

```
#!/bin/sh

cd "$( dirname "$0" )"
java -Xms512M -Xmx1024M -XX:MaxPermSize=128M -jar spigot-1.11.jar
```

Make this an executable file (e.g. on mac/linux : `chmod +x ./runSpigot.sh`).

You can now start the server in a command prompt using `./runSpigot.sh`.
