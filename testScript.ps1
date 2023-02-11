$Answer = Read-Host "Do you want to check the weather? [y/N] "
if ( $Answer -eq "y" -or "yes" )
{
    weather
}
elseif ( $Answer -eq "N" ) {
    Write-Host "You don't have to be mean about it. :("
}
else {
    Write-Host "To lazy to actually type something? Wow."
}