#RequireAdmin
#include <AutoItConstants.au3>

HotKeySet("{esc}","quit")                          ;Sets ESC to hotkey to go to the function "quit" (line 18)
$quit=false                                        ;sets the value of $quit to "false" (used to determine if the loop should continue or not, see line 16)

Do
sleep(Random(15000,20000,1))                       ;Runs the loop on random intervals between 15 and 20 seconds
$breath = PixelGetColor(934,136)                   ;defines the pixel that should be checked 
   If $breath = 0x888381 Then                      ;defines the colour the pixel should have to perform actions
    BlockInput($BI_DISABLE)                        ;blocks user mouse & keyboard input to make sure that the app can switch to WoW
    WinActivate("[CLASS:GxWindowClass]", "")       ;Makes WoW the active window
    WinWaitActive("[CLASS:GxWindowClass]", "", 10) ;Waits for WoW to be active window
    Send("{SPACE DOWN}")                           ;Sends spacebar down
    sleep(Random(1000,1500,1))                     ;waits for random time between 1 and 1.5 seconds in order to simulate spacebar being held down
    Send("{SPACE UP}")                             ;Sends spacebar up
    BlockInput($BI_ENABLE)                         ;unblocks user input
  EndIf                                         
until $quit=true                                   ;Tells the loop to run until $quit is "true"                              

func quit()                       
   $quit=true                                      ;Changes value of $quit to "true"
   Exit                                            ;Exits application
EndFuncw
