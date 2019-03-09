; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT

#SingleInstance, Force
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
#IfWinActive, ahk_exe Astro-Win64-Shipping.exe

Return

~MButton::

SendInput, t
SendInput, {w down}
SetTimer, AutoTether, 2900
keywait, MButton
SetTimer, AutoTether, off
SendInput, {w up}

Return

AutoTether:
SendInput, {w up}
SendInput, t
SendInput, {w down}

Return
