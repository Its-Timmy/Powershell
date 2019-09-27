# Try running this with 'hello world' :: then with 'world hello'
# Then explicitly define the parameters using 'world hello' to make it work.
# Answer = .\5modsscript-2.ps1 -name world -greeting hello
# $Greeting is in position 1, and called by using -greeting ...
# $Name is in position 2, and called by using -name

# It calls it like it sees it

Param([Parameter(Mandatory=$true,Position=2)][String]$Name,
    [Parameter(Mandatory=$True,Position=1)][String]$Greeting)
Write-Output "$Greeting $Name"