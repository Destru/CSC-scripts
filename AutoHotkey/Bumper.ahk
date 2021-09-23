; cyberpunk.social
currentID := WinExist("A")

BlockInput On

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
Sleep 250
SendInput *bump
Send {Enter}
Sleep 250
SendInput ~bump
Send {Enter}
Sleep 250
SendInput d=bump
Send {Enter}
SetKeyDelay -1
WinActivate ahk_id %currentID%

BlockInput Off

return
