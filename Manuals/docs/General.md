# Installation

## Install java

Windows: Download JRE 8.

http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

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

### Add the world files

Download the experiment world folder "ExperimentWorld1" from:

[https://github.com/seannyD/Expericraft/tree/master/worlds](https://github.com/seannyD/Expericraft/tree/master/worlds)

You can download just this folder as a zip file using:

[https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/seannyD/Expericraft/tree/master/worlds/ExperimentWorld1](https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/seannyD/Expericraft/tree/master/worlds/ExperimentWorld1)


Copy the folder ExperimentWorld1 to the minecraft folder "saves": `C:/Users/ENCAP/AppData/Roaming/.minecraft/saves/`.  