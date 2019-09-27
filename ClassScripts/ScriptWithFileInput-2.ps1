#Mod4Script1  --> #mod4Script1CIM

# editing for Mandatory Parameter
# We can pass a computername when we execute the script
# If we don't, it will prompt us for a computername
# Passing name >> .\ScriptWithFileInput-2.ps1 tdesktop

Param(
   [Parameter(Mandatory=$true)] [string]$computername)
Get-CimInstance -class win32_computersystem `
    -ComputerName $computername |
    Format-List numberofprocessors, totalphysicalmemory

