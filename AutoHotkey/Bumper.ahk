; Cyberpunk Social Club
; AutoHotkey Bumper (DISBOARD)
currentID := WinExist("A")

IfWinExist ahk_exe Discord.exe
  WinActivate ahk_exe Discord.exe
else
  Run "%USERPROFILE%\AppData\Local\Discord\Update.exe --processStart Discord.exe"

WinWaitActive ahk_exe Discord.exe
SendInput ^k
SendInput {Text}public-relations
Sleep 500
Send {Enter}
SendInput {!}d{Space}bump
Send {Enter}
SetKeyDelay -1
WinActivate ahk_id %currentID%
return
