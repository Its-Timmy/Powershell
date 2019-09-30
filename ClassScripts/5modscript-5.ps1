<# This script accepts input from the pipeline.
It doesnt really do much else.... for now!!    
.SYNOPSIS
Some help keywords are .SYNOPSIS, .Description .Parameter <Parameter-Name> `

.EXAMPLE
.NOTES 
.LINK
#>

[cmdletbinding()]

Param
(
    [Parameter(ValuefromPipeline=$true,Mandatory=$true)]
        [string[]]$computers
)