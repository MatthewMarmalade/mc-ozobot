# mc-ozobot
Implementation of the Ozobot Educational Robots within Minecraft.
The [Demonstration Video](https://youtu.be/L0j7z9jHBdI) is probably the best way to figure out what the system actually does!

## Installation - Requires Minecraft Java Edition 1.15 and above
1. Download and unzip the repository. Here's a shortcut: [mc-ozobot-main](https://github.com/MatthewMarmalade/mc-ozobot/archive/refs/heads/main.zip)
2. Create a new Minecraft world, or pick an old one. A 'Creative' world is probably a good idea. You'll need the ability to run commands as well, so enable cheats if they aren't already!
3. Find the folder for this world. It's usually in Users/<you>/Library/Application\ Support/minecraft/saves (OS X) or %appdata%\.minecraft\saves (Windows). You can also find it from in-game by pressing escape to bring up the main menu, then Options -> Resource Packs -> Open Pack Folder, then looking at the directory above the pack folder.
4. Find the 'datapacks' folder within that world.
5. Move the downloaded folder, 'mc-ozobot-main' into the datapacks folder. 
6. In the minecraft world, run /reload.
7. Run /function ozobots:start_ozobot
8. Done! Use the command /function ozobots:give_ozobot to give yourself everything you need to start playing with ozobots.

## Usage
1. Thowing (default keybind: 'Q') a piece of white stained glass, renamed 'Ozobot' will summon an ozobot on the ground.
3. Create lines with black concrete, that the ozobot will follow.
4. You can also form lines out of red, green, and blue glazed terracotta. These blocks have different patterns, so you can tell them apart by more than color.
5. The ozobot will emit the color of the line it is following!
6. You can also use color codes to give the Ozobot instructions! Color codes are demonstrated in the video above, and listed out below.
7. You can remove an ozobot by using a blank nametag on it. If it's moving too fast, try putting a block in its way!
8. You can see the commands an ozobot is reading by holding onto a compass.

## Color Codes
### Red: Speed
- Red -> Black -> Red: **Slow**: Very slow movement.
- Red -> Black -> Green: **Cruise**: Default speed.
- Red -> Black -> Blue: **Turbo**: Very fast movement.

### Green: Directions
- Green -> Red -> Green: **Straight On**: At the next intersection, go forward if possible.
- Green -> Red -> Blue: **Left**: At the next intersection, go left if possible.
- Green -> Blue -> Red: **Right**: At the next intersection, go right if possible.
- Green -> Blue -> Green: **Reverse**: Turn around!

### Blue: Loading/Variable
- Blue -> Red -> Green: **Load Block**: Remove a piece of yellow concrete powder from anywhere adjacent to the robot (demonstration in video), and add 1 to the current count.
- Blue -> Green -> Red: **Unload Block**: If the count is greater than 0, place down a piece of yellow concrete powder on a piston adjacent to the line (demonstration in video) and remove 1 from the current count.
