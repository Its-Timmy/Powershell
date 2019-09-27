# Mod4Script1  --> #mod4Script1CIM --> Mod4Script2
# Working with Arrays - we are building it at [string[]]
    # We are creating an array of strings, used as inputs!
# "$computername" can be anything we want. Its just a variable(?)
# Iterating through the array stored in $computers, which is then referenced
     # by $computername

Param(
    [Parameter(Mandatory=$true)][string[]]$computers)
    foreach ($computername in $computers)    
{
    $win32CSOut = Get-CimInstance -ClassName Win32_ComputerSystem -ComputerName $computername
    $win32OSOut = Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName $computername

    $paramout =  @{'ComputerName' =$computername;
    'Memory'= $win32CSOut.TotalPhysicalMemory;
    'Free Memory' = $win32OSOut.FreePhysicalMemory;
    'Procs' = $win32CSOut.NumberOfProcessors;
    'Version' = $win32OSOut.version}

    $outobj =New-Object -TypeName psobject -Property $paramout
    Write-Output $outobj    
}

# I was doing something wrong before... but Im not sure what??