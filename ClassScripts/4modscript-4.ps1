# adding a little to #3 in this series.
# This type of command is nice, because I can run it on just one computer, or..
# I can run it on as many computers as I like.

Param(
    [Parameter(Mandatory=$true)][string[]]$computers)
    foreach ($computername in $computers)    
{
    $win32CSOut = Get-CimInstance -ClassName Win32_ComputerSystem -ComputerName $computername
    $win32OSOut = Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName $computername

# Hash-table below
    $paramout =  @{'ComputerName' =$computername;
    'Memory (KB)'= $win32CSOut.TotalPhysicalMemory/1024;
    'Free Memory' = $win32OSOut.FreePhysicalMemory;
    'Procs' = $win32CSOut.NumberOfProcessors;
    'Version' = $win32OSOut.version;
    'L.Procs'= $win32CSOut.NumberOfLogicalProcessors;
    'Serial' =$win32OSOut.SerialNumber;
    'User' = $win32CSOut.UserName}
# Setting the Hash-Table to a custom object, then displaying it
    $outobj =New-Object -TypeName psobject -Property $paramout
    Write-Output $outobj    
}

