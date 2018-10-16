#Persistent
#SingleInstance Force
#NoEnv
SetWorkingDir, %A_ScriptDir%
Menu, Tray, Icon, Calendar.ico, 1

IniRead, vFormat, Settings.ini, Settings, Format
if (vFormat="ERROR") or (vFormat="") then {
	msgbox, Error reading Settings.ini!
	ExitApp
}
	
FormatTime, vData, YYYYMMDDHH24MISS, %vFormat%
SendInput, %vData%
ExitApp
