; Cyberpunk Social Club (https://cyberpunk.social)
; Discord Server Bumper

currentID := WinExist("A")

IfWinExist ahk_exe Discord.exe
  WinActivate ahk_exe Discord.exe
else
  Run "%USERPROFILE%\AppData\Local\Discord\Update.exe --processStart Discord.exe"

BlockInput On
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
SetKeyDelay -1
BlockInput Off
WinActivate ahk_id %currentID%
return
