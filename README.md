# Mega_Australian
A Team Fortress 2 IP based Mega Man clone I made as a high school project in Assembly 8086.

I use Dosbox to compile the code and run it.
For the game to run properly, you should run dosbox at max cycles or a fixed number above 20000 cycles. This could be changes through the Dosbox options file.
To run the game, you need to start by mounting the directory and then running the game. Use the following commands:
mount c <the full path to where you put the directory>
c:
bas (or "bas.exe")

The current working program is "bas". I have no recollection of what changes are in "base", "bas2", "scrbuffer", "readmap" or any other code in the project but they currently do not function and are not used in the code.

If you want to make any changes to the code, the changes should be made to the "bas.asm" file, and then you would need to compile the code. Compile using the following commands:
tasm bas (or "bas.asm")
tlink bas (or "bas.obj")
bas (or "bas.exe")


Next steps for me:
1. Changing the program to use a screen buffer and not simply print every procedure as it goes.
2. Changing the level format to a collision checker instead of the current "BasicReset" that is basically a manual code insert that checks where Saxton is and adjusts the floor and ceiling accordingly.
3. Use a different clock than the es:6ch to get a better framerate/tickrate.
4. Finish level 6
5. Create boss levels
