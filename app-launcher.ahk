#NoTrayIcon

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
