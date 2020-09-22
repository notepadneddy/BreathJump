# BreathJump
Compile the code using AutoIt (Aut2Exe) - https://www.autoitscript.com/site/autoit/downloads/

After starting the compiled file - use ESC to close the app.
The app itself looks for a pixel to change to the color of the breathbar in WoW. The check is made every 15-20 seconds (randomly decided).
If the breath bar is identified, the app performs the following actions:

1. Block user input
2. Make WoW the active window
3. Press down spacebar for a random time between 1 and 1.5 seconds
4. Unblock user input

The user inpput is blocked in order to make sure that the app manages to switch to WoW and perform the jump to get out of water, even if the computer is being used by the user.
As you can see in the code - the input is blocked only after the breath bar has been found, and unblocked as soon as the spacebar has been pressed.
