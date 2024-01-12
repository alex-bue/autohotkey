#Persistent  ; Keeps the script running until it is explicitly exited

; rebind capslock to control and esc
*CapsLock::
	Send {LControl down}
	Return
*CapsLock up::
	Send {LControl Up}
	if (A_PriorKey=="CapsLock"){
		if (A_TimeSincePriorHotkey < 1000)
			Suspend On
			Send, {Esc}
			Suspend Off
	}
	Return

; open terminal
!Enter::Run, wt

; open existing / new chrome instance
!b::
    IfWinExist, ahk_class Chrome_WidgetWin_1
        WinActivate
    else
        Run, chrome.exe
Return

; open new chrome instance
!+b::Run, chrome.exe
