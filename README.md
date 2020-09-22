# BreathJump
Tool to prevent dying from drowning in WoW.
The app itself looks for a pixel to change to the color of the breathbar in WoW. The check is made every 15-20 seconds (randomly decided).
If the breath bar is identified, the app performs the following actions:

1. Block user input
2. Make WoW the active window
3. Press down spacebar for a random time between 1 and 1.5 seconds
4. Unblock user input

The user inpput is blocked in order to make sure that the app manages to switch to WoW and perform the jump to get out of water, even if the computer is being used by the user.
As you can see in the code - the input is blocked only after the breath bar has been found, and unblocked as soon as the spacebar has been pressed.

After starting the compiled file - use ESC to close the app.

The code as it is only works on 1920x1080 resolution and with the standard WoW breath bar.  
WoW also has to be on the main display.  
* Line #9 and #10 in the code can be changed to change which pixel to look at, as well as which colour it should have.  
* Line #8 can be changed to change how often the check is done.  
* Line #15 can be changed to change how long the spacebar should be held down.

Compile the code using AutoIt (Aut2Exe) - https://www.autoitscript.com/site/autoit/downloads/
