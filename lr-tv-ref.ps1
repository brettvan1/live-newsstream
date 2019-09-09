#=====================================================================
# 
#
# Script:      lr-tv-ref.ps1
#
# Author:      Brett van Gennip
# Date:        September 7 2018
# Version:	   1.0v
#
# Description: Closes and reopens chrome on a timer of 60 minutes
#
# Purpose:     To ensure that the live stream of the website plays consistently
#
#======================================================================

function closeC(){
	Get-Process chrome |  Foreach-Object { $_.CloseMainWindow() | Out-Null }
}

function openC(){
	.'c:\Program Files (x86)\Google\Chrome\Application\chrome.exe' --kiosk https://globalnews.ca/live/toronto/
}


do{
	openC
	start-sleep 3600
	closeC
}While($true)
