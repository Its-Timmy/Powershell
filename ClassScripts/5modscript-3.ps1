# Using alias parameters
# Okay follow me. Before, we were getting this to output correctly, passing World Hello
#   To do that, we passed -name World -greeting Hello
# We created an alias for $name / -name as "friend"
#    Now we can use "friend" as an alias.
# Try == .\5modscript.ps1-3 -friend World -greeting Hello
#   Or, just == .\5modscript.ps1 -friend World Hello

Param([parameter(mandatory=$true,position=2)]
        [alias("Friend")][String]$name,
    [parameter(mandatory=$true,position=1)]
        [string]$greeting)

    write-output "$greeting $name"