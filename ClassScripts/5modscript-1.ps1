# Arguments = A value that is passed b/w programs, subroutines, or functions
#   Independent items, or variables, that contain data or codes.
# When an argument is used to customize a program for a user, it is typically called a Parameter
# foreach -> Allows iteration over all elements in the array, and perform a given option to...
#   each element of the array.

Write-Host 'Number of arguments was :' ($args.length)
Write-Output 'and they were:'
foreach($arg in $args)
{
   Write-Output $arg
}

