#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force


fn_on = false

; Key for toggling Fn Key
RWin::	
	if fn_on = false
		fn_on = true
	else
		fn_on = false
	return

; Mouse Keys 
$w::
$s::
$a::
$d::
	if fn_on = true
	{	
		loop 
		{
			Count++
			if getkeystate("w", "P")
				DllCall("mouse_event", uint, 1, int, 0, int, -Count/3, uint, 0, int, 0)
			if getkeystate("a", "P")
				DllCall("mouse_event", uint, 1, int, -Count/3, int, 0, uint, 0, int, 0)
			if getkeystate("s", "P")
				DllCall("mouse_event", uint, 1, int, 0, int, Count/3, uint, 0, int, 0)
			if getkeystate("d", "P")	
				DllCall("mouse_event", uint, 1, int, Count/3, int, 0, uint, 0, int, 0)
			sleep 20	; increase/decrease this to adjust the repeat rate
		} 
		until not (getkeystate("w", "P") or getkeystate("a", "P") or getkeystate("s", "P") or getkeystate("d", "P"))
		Count = 0
	}
	else
		if getkeystate("w", "P")
			Send w
		if getkeystate("a", "P")
			Send a	
		if getkeystate("s", "P")
			Send s
		if getkeystate("d", "P")
			Send d
		return
		
		
$q::
	if fn_on = true
	{
		if not GetKeyState("LButton", "P")
			Click Down
		return
	}
	else
		Send q
	return
	
$q Up:: 
	if fn_on = true
		Click up
	else
		return
	return

$e::
	if fn_on = true
	{
		if not GetKeyState("LButton", "P")
			Click Down Right
		return
	}
	else
		Send e
	return
	
$e Up:: 
	if fn_on = true
		Click up Right	
	else
		return
	return
	
$r::
$f::
	if fn_on = true
	{	
		loop 
		{
			if getkeystate("r", "P")
				MouseClick, wheelup
			if getkeystate("f", "P")
				MouseClick, wheeldown
			sleep 30	; increase/decrease this to adjust the repeat rate
		} 
		until not (getkeystate("r", "P") or getkeystate("f", "P"))
	}		
	else
		if getkeystate("r", "P")
			Send r
		if getkeystate("f", "P")
			Send f	
	return	

; Modifier Keys
	
$RShift::
$LShift::
$RAlt::
$LAlt::
$LCtrl::
$RCtrl::
	if fn_on = true
		return
	else
		if getkeystate("RShift", "P")
			Send {RShift Down}
		else if getkeystate("LShift", "P")
			Send {LShift Down}	
		else if getkeystate("RAlt", "P")
			Send {RAlt Down}		
		else if getkeystate("LAlt", "P")
			Send {LAlt Down}	
		else if getkeystate("LCtrl", "P")
			Send {LCtrl Down}		
		else if getkeystate("RCtrl", "P")
			Send {RCtrl Down}	
	return	
	
$RShift Up::
	if fn_on = true
		Send {RShift Up}
	else
		return
	return
$LShift Up::Send {LShift Up}
	if fn_on = true
		Send {LShift Up}
	else
		return
	return
$RAlt Up::Send {RAlt Up}
	if fn_on = true
		Send {RAlt Up}
	else
		return
	return
$LAlt Up::Send {LAlt Up}
	if fn_on = true
		Send {LAlt Up}
	else
		return
	return
$LCtrl Up::Send {LCtrl Up}
	if fn_on = true
		Send {LCtrl Up}
	else
		return
	return
$RCtrl Up::Send {RCtrl Up}
	if fn_on = true
		Send {RCtrl Up}
	else
		return
	return

; Navigation Keys
$o:: 
	if fn_on = true
		Send {Up}
	else
		Send o
	return
	
$k:: 
	if fn_on = true
		Send {Left}
	else
		Send k
	return
	
$l:: 
	if fn_on = true
		Send {Down}
	else
		Send l
	return	

$;:: 
	if fn_on = true
		Send {Right}
	else
		Send {;}
	return	
	
$j::
	if fn_on = true
		Send {PgUp}
	else
		Send j
	return	
	
$m::
	if fn_on = true
		Send {PgDn}
	else
		Send m
	return		

$,::
	if fn_on = true
		Send {Home}
	else
		Send {,}
	return		

$.::
	if fn_on = true
		Send {End}
	else
		Send {.}
	return	

$p::
	if fn_on = true
		Send {PrintScreen}
	else
		Send p
	return	

$[::
	if fn_on = true
		Send {ScrollLock}
	else
		Send {[}
	return	
	
$]::
	if fn_on = true
		Send {Pause}
	else
		Send {]}
	return	
	
$\::
	if fn_on = true
		Send {Insert}
	else
		Send {\}
	return		
	
$Backspace::
	if fn_on = true
		Send {Delete}
	else
		Send {BackSpace}
	return			

; Function Keys
$1::
	if fn_on = true
		Send {F1}
	else
		Send 1
	return			

$2::
	if fn_on = true
		Send {F2}
	else
		Send 2
	return		

$3::
	if fn_on = true
		Send {F3}
	else
		Send 3
	return		

$4::
	if fn_on = true
		Send {F4}
	else
		Send 4
	return	
	
$5::
	if fn_on = true
		Send {F5}
	else
		Send 5
	return		

$6::
	if fn_on = true
		Send {F6}
	else
		Send 6
	return		

$7::
	if fn_on = true
		Send {F7}
	else
		Send 7
	return		

$8::
	if fn_on = true
		Send {F8}
	else
		Send 8
	return		

$9::
	if fn_on = true
		Send {F9}
	else
		Send 9
	return		

$0::
	if fn_on = true
		Send {F10}
	else
		Send 0
	return		

$-::
	if fn_on = true
		Send {F11}
	else
		Send {-}
	return		

$=::
	if fn_on = true
		Send {F12}
	else
		Send {=}
	return		
	
;App Key
$':: 
	if fn_on = true
		Send {Right}
	else
		Send {AppsKey}
	return	
	
$y:: 
	if fn_on = true
		Send {Volume_Mute}
	else
		Send y
	return		
	
$u:: 
	if fn_on = true
		Send {Volume_Down}
	else
		Send u
	return		
	
$i:: 
	if fn_on = true
		Send {Volume_Up}
	else
		Send i
	return		
