; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT

#SingleInstance, Force ; Prevent script to run multiple times.
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
#IfWinActive, ASTRONEER ; Limit the script to work only in Astroneer Window (Steam or Windows version)
MsgBox, Click once on Middle mouse button to put a tether in your position and hold it to start moving forward in AutoTether Mode.`nScript will only work in the game and won't do anything outside it`nQuit the Script using green tray icon (With white H inside it).

Return

~MButton:: ; Middle-Mouse button Trigger ("~" Symbol means Mbutton original function won't be affected).

Send, t ; Spawn a tether right after trigger button (MButton) with "t" key.
Send, {w down} ; Hold "w" Key Down so player move forward
SetTimer, AutoTether, 2900 ; Set a periodic timer for "AutoTether" lable.
keywait, MButton ; Wait for Mbutton to be released.
SetTimer, AutoTether, off ; Turns the "AutoTether" lable off.
Send, {w up}

Return ; Prevent AHK to go any further from here

AutoTether:
Send, {w up} ; temporary release "w" key in order to prevent game/os from skipping the next Send command.
Send, t
Send, {w down}

Return
