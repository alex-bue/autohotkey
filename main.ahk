#Persistent  ; Keeps the script running until it is explicitly exited

; Set the working directory to the script's directory
SetWorkingDir, %A_ScriptDir%

; Run scripts
Run, %A_ScriptDir%\rebind-caps.ahk
Run, %A_ScriptDir%\app-launcher.ahk
