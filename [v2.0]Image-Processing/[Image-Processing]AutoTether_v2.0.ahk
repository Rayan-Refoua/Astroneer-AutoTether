/*+++++++++++++++++++++++++++++++++++++++++++++
+  
+         DO NOT change GoTo Commands.
+    I have used them for best performance.    
+
+++++++++++++++++++++++++++++++++++++++++++++
*/
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior spTTd and reliability.
#SingleInstance, Force
SetBatchLines -1
;CoordMode, Pixel, ScrTTn
State :=0
#IfWinActive, ASTRONEER

1:: ; Turns the Script On
State := 1
SetTimer, TT, -100 ; runs the loop
Return
2:: ; Turns the Script Off
State :=0
Return

TT:
Loop{
    ;MsgBox, 
    ;PixelSearch, OutputVarX, OutputVarY, 0, 540, 1920, 1080, 0x9D6447, 0 , ;Fast
    ImageSearch, OutputVarX, OutputVarY, 0, 540, 1920, 1080, *8 SamplePixel.png
    if (OutputVarX == "") {
    }Else{
        Goto, TT
        Return
    }
    
    If (State == "0"){
        Goto, EX
    }
    SendInput, t
    SoundBeep, 400, 10
    Sleep, 800
}

Return
EX:
Return
