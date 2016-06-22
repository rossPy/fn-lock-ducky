#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Window
	
Gui, Add, Text,, Mouse Key Acceleration:
Gui, Add, Text,, Mouse Key Mode:
;Gui, Add, Button, default, OK
Gui, Add, DropDownList, vAcceleration ym, None||Slow|Medium|Fast
Gui, Add, DropDownList, vMouseKey, Mode 1||Mode 2  

IfExist, %A_ScriptDir%\config.ini
{
	IniRead, Acceleration_Mode, %A_ScriptDir%\config.ini, Ducky Advisor, Acceleration	
	GuiControl, ChooseString, Acceleration, %Acceleration_Mode%
	
	IniRead, MouseKey_Mode, %A_ScriptDir%\config.ini, Ducky Advisor, MouseKey
	GuiControl, ChooseString, MouseKey, %MouseKey_Mode%	
}

Gui, Add, Button, default, OK  ; The label ButtonOK (if it exists) will be run when the button is pressed.

Gui, Show,, Ducky Mini Configuration
return  ; End of auto-execute section. The script is idle until the user does something.

GuiClose:
ButtonOK:
Gui, Submit  ; Save the input from the user to each control's associated variable.

IniWrite, %Acceleration%, %A_ScriptDir%\config.ini, Ducky Advisor, Acceleration
IniWrite, %MouseKey%, %A_ScriptDir%\config.ini, Ducky Advisor, MouseKey
MsgBox Configuration saved!

ExitApp
