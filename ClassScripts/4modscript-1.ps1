#Mod4Script1  --> #mod4Script1CIM

# This originally used Get-WmiObject, which is depreciated.
# Get-WmiObject also doesn't work on the .Core framework.
# So, Get-CimInstance > Get-WmiObject

Param(
   [string]$computername='tdesktop')
Get-CimInstance -class win32_computersystem `
    -ComputerName $computername |
    Format-List numberofprocessors, totalphysicalmemory

