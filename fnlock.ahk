#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force
IfNotExist, %A_ScriptDir%\config.ini
{
	msgbox, You must run Config first!
	ExitApp
}
IniRead, Acceleration_Mode, %A_ScriptDir%\config.ini, Ducky Advisor, Acceleration	
IniRead, MouseKey_Mode, %A_ScriptDir%\config.ini, Ducky Advisor, MouseKey

; Mouse Keys 
$*w::
$*a::
$*s::
$*d::
	if GetKeyState("CapsLock", "T")
	{	
		if Acceleration_Mode = None
			divisor := 1
		else if Acceleration_Mode = Slow
			divisor := 6
		else if Acceleration_Mode = Medium
			divisor := 3
		else
			divisor := 1
		loop 
		{
			
			if Acceleration_Mode = None
			{
				if not Count
					Count = 5
			}
			else
				Count++
			if GetKeyState("w", "P")
				DllCall("mouse_event", uint, 1, int, 0, int, -Count/divisor, uint, 0, int, 0)
			if GetKeyState("a", "P")
				DllCall("mouse_event", uint, 1, int, -Count/divisor, int, 0, uint, 0, int, 0)
			if GetKeyState("s", "P")
				DllCall("mouse_event", uint, 1, int, 0, int, Count/divisor, uint, 0, int, 0)
			if GetKeyState("d", "P")	
				DllCall("mouse_event", uint, 1, int, Count/divisor, int, 0, uint, 0, int, 0)
			sleep 20	; increase/decrease this to adjust the repeat rate
		} 
		until not (GetKeyState("w", "P") or GetKeyState("a", "P") or GetKeyState("s", "P") or GetKeyState("d", "P"))
		Count = 0
	}
	else if GetKeyState("Shift","P")
	{
		if GetKeyState("w", "P")
			Send W
		if GetKeyState("a", "P")
			Send A	
		if GetKeyState("s", "P")
			Send S
		if GetKeyState("d", "P")
			Send D			
	}
	else
	{
		if GetKeyState("w", "P")
			Send w
		if GetKeyState("a", "P")
			Send a	
		if GetKeyState("s", "P")
			Send s
		if GetKeyState("d", "P")
			Send d
	}
	return
		
$*q::
	if GetKeyState("CapsLock", "T")
	{
		if not GetKeyState("LButton", "P")
		{
			if MouseKey_Mode = Mode 1
				Click Down
			else
				Click Down Right		
		}	
	}
	else if GetKeyState("Shift","P")
		Send Q
	else
		Send q
	return
	
$*q Up:: 
	if GetKeyState("CapsLock", "T")
	{
		if MouseKey_Mode = Mode 1		
			Click up
		else
			Click up Right
	}
	else
		return
	return

$*e::
	if GetKeyState("CapsLock", "T")
	{
		if not GetKeyState("LButton", "P")
		{
			if MouseKey_Mode = Mode 1
				Click Down Right
			else
				Click Down
		}
	}
	else if GetKeyState("Shift","P")
		Send E
	else
		Send e
	return
	
$*e Up:: 
	if GetKeyState("CapsLock", "T")
	{
		if MouseKey_Mode = Mode 1
			Click up Right	
		else
			Click up
	}
	else
		return
	return
	
$*r::
$*f::
	if GetKeyState("CapsLock", "T")
	{	
		loop 
		{
			if GetKeyState("r", "P")
				MouseClick, wheelup
			if GetKeyState("f", "P")
				MouseClick, wheeldown
			sleep 30	; increase/decrease this to adjust the repeat rate
		} 
		until not (GetKeyState("r", "P") or GetKeyState("f", "P"))
	}		
	else
	{
		if GetKeyState("r", "P")
		{
			if GetKeyState("Shift","P")
				Send R
			else
				Send r
		}
		if GetKeyState("f", "P")
		{
			if GetKeyState("Shift","P")
				Send F
			else
				Send f
		}
	}
	return	


; Navigation Keys
$*o:: 
	if GetKeyState("CapsLock", "T")
		Send {Up}
	else if GetKeyState("Shift","P")
		Send O
	else
		Send o
	return
	
$*k:: 
	if GetKeyState("CapsLock", "T")
		Send {Left}
	else if GetKeyState("Shift","P")
		Send K
	else
		Send k
	return
	
$*l:: 
	if GetKeyState("CapsLock", "T")
		Send {Down}
	else if GetKeyState("Shift","P")
		Send {L}
	else
		Send l
	return	

$*;:: 
	if GetKeyState("CapsLock", "T")
	{
		Send {Right}
		return
	}
	else if GetKeyState("Shift","P")
		Send {:}
	else
		Send {;}
	return	
	
$*j::
	if GetKeyState("CapsLock", "T")
		Send {PgUp}
	else if GetKeyState("Shift","P")
		Send J
	else
		Send j
	return	
	
$*m::
	if GetKeyState("CapsLock", "T")
		Send {PgDn}
	else if GetKeyState("Shift","P")
		Send M
	else
		Send m
	return		

$*,::
	if GetKeyState("CapsLock", "T")
		Send {Home}
	else if GetKeyState("Shift","P")
		Send {<}
	else
		Send {,}
	return		

$*.::
	if GetKeyState("CapsLock", "T")
		Send {End}
	else if GetKeyState("Shift","P")
		Send {>}
	else
		Send {.}
	return	

$*p::
	if GetKeyState("CapsLock", "T")
		Send {PrintScreen}
	else if GetKeyState("Shift","P")
		Send P
	else
		Send p
	return	

$*[::
	if GetKeyState("CapsLock", "T")
		Send {ScrollLock}
	else if GetKeyState("Shift","P")
		Send {Asc 0123}
	else
		Send {[}
	return	
	
$*]::
	if GetKeyState("CapsLock", "T")
		Send {Pause}
	else if GetKeyState("Shift","P")
		Send {Asc 0125}
	else
		Send {]}
	return	
	
$*\::
	if GetKeyState("CapsLock", "T")
		Send {Insert}
	else if GetKeyState("Shift","P")
		Send {|}
	else
		Send {\}
	return		
	
$*Backspace::
	if GetKeyState("CapsLock", "T")
		Send {Delete}
	else
		Send {BackSpace}
	return			

$*Delete::
	if GetKeyState("CapsLock", "T") 
		Send {BackSpace}
	else
        Send {Delete}
	return
			

; Function Keys

$Escape::
	if GetKeyState("CapsLock", "T")
		Send {Asc 0096}
	else
		Send {Escape}
	return		
$`::
	if GetKeyState("CapsLock", "T")
		Send {Escape}
	else
		Send {Asc 0096}
	return	
	
+`::Send {Asc 0126}


$*1::
	if GetKeyState("CapsLock", "T")
		Send {F1}
	else if GetKeyState("Shift","P")
		Send {!}
	else
		Send 1
	return			

$*2::
	if GetKeyState("CapsLock", "T")
		Send {F2}
	else if GetKeyState("Shift","P")
		Send {@}
	else
		Send 2
	return		

$*3::
	if GetKeyState("CapsLock", "T")
		Send {F3}
	else if GetKeyState("Shift","P")
		Send {#}
	else
		Send 3
	return		

$*4::
	if GetKeyState("CapsLock", "T")
		Send {F4}
	else if GetKeyState("Shift","P")
		Send {$}
	else
		Send 4
	return	
	
$*5::
	if GetKeyState("CapsLock", "T")
		Send {F5}
	else if GetKeyState("Shift","P")
		Send {Asc 037}
	else
		Send 5
	return		

$*6::
	if GetKeyState("CapsLock", "T")
		Send {F6}
	else if GetKeyState("Shift","P")
		Send {^}
	else
		Send 6
	return		

$*7::
	if GetKeyState("CapsLock", "T")
		Send {F7}
	else if GetKeyState("Shift","P")
		Send {&}
	else
		Send 7
	return		

$*8::
	if GetKeyState("CapsLock", "T")
		Send {F8}
	else if GetKeyState("Shift","P")
		Send {*}
	else
		Send 8
	return		

$*9::
	if GetKeyState("CapsLock", "T")
		Send {F9}
	else if GetKeyState("Shift","P")
		Send {(}
	else
		Send 9
	return		

$*0::
	if GetKeyState("CapsLock", "T")
		Send {F10}
	else if GetKeyState("Shift","P")
		Send {)}
	else
		Send 0
	return		

$*-::
	if GetKeyState("CapsLock", "T")
		Send {F11}
	else if GetKeyState("Shift","P")
		Send {_}
	else
		Send {-}
	return		

$*=::
	if GetKeyState("CapsLock", "T")
		Send {F12}
	else if GetKeyState("Shift","P")
		Send {+}
	else
		Send {=}
	return		
	
;App Key
$*':: 
	if GetKeyState("CapsLock", "T")
		Send {Right}
	else if GetKeyState("Shift","P")
		Send {Asc 0034}
	else
		Send {AppsKey}
	return	
	
$*y:: 
	if GetKeyState("CapsLock", "T")
		Send {Volume_Mute}
	else if GetKeyState("Shift","P")
		Send Y
	else
		Send y
	return		
	
$*u:: 
	if GetKeyState("CapsLock", "T")
		Send {Volume_Down}
	else if GetKeyState("Shift","P")
		Send U
	else
		Send u
	return		
	
$*i:: 
	if GetKeyState("CapsLock", "T")
		Send {Volume_Up}
	else if GetKeyState("Shift","P")
		Send I
	else
		Send i
	return		
	
; Remove the side effect of Caps Lock(Not necessary, but added to make fn lock more consistent to the standard fn behavior)

$t::
	if GetKeyState("CapsLock", "T")
		Send t
	else if getkeystate("Shift", "P")
		Send T
	else
		Send t
	return
		
$g::
	if GetKeyState("CapsLock", "T")
		Send g
	else if getkeystate("Shift", "P")
		Send G
	else
		Send g
	return
$h::
	if GetKeyState("CapsLock", "T")
		Send h
	else if getkeystate("Shift", "P")
		Send H
	else
		Send h
	return
$n::
	if GetKeyState("CapsLock", "T")
		Send n
	else if getkeystate("Shift", "P")
		Send N
	else
		Send n
	return

$b::
	if GetKeyState("CapsLock", "T")
		Send b
	else if getkeystate("Shift", "P")
		Send B
	else
		Send b
	return
$v::
	if GetKeyState("CapsLock", "T")
		Send v
	else if getkeystate("Shift", "P")
		Send V
	else
		Send v
	return
$c::
	if GetKeyState("CapsLock", "T")
		Send c
	else if getkeystate("Shift", "P")
		Send C
	else
		Send c
	return

$x::
	if GetKeyState("CapsLock", "T")
		Send x
	else if getkeystate("Shift", "P")
		Send X
	else
		Send x
	return
$z::
::
	if GetKeyState("CapsLock", "T")
		Send z
	else if getkeystate("Shift", "P")
		Send Z
	else
		Send z
	return
