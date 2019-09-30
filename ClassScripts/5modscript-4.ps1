# Mandatory Computername
# Switch is activated if -showlogprocs is used in calling the script

Param
(
[Parameter(Mandatory=$true)][String]$computername,[switch]$showlogprocs
)
if($showlogprocs)
{
    Get-CimInstance -class Win32_ComputerSystem -ComputerName $computername `
        | format-list NumberOfLogicalProcessors, TotalPhysicalMemory
}
else
{
    Get-CimInstance Win32_ComputerSystem -ComputerName $computername `
        | format-list NumberOfProcessors, TotalPhysicalMemory
} 
    
