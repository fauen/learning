# Default applications to install when you have a new Windows install.
<#
wsl.exe --install
#>

Clear-Host

$userOption = @"
1. Install applications through winget.
2. Link config file from github repo.
3. Check the weather (because why not?).
0. Nothing.

"@

$userOption

[int]$answer = Read-Host 'What do you want to do?'
switch ( $answer ) {
    1 {
        winget install --id=Discord.Discord -e --accept-source-agreements
        winget install --id=Microsoft.VisualStudioCode -e --accept-source-agreements
        winget install --id=7zip.7zip -e --accept-source-agreements
        winget install --id=Mozilla.Firefox -e --accept-source-agreements
        winget install --id=Microsoft.PowerToys -e --accept-source-agreements
        winget install --id=Spotify.Spotify -e --accept-source-agreements
        winget install --id=VideoLAN.VLC -e --accept-source-agreements
    }
    2 {
        $profilePath = Read-Host 'Where is the config file located?'
        if (Test-Path -Path $profilePath) {
            New-Item -ItemType SymbolicLink -Path $PROFILE -Target $profilePath
        }
        else {
            Write-Error -Message 'Path does not exist!'
            throw
        }
    }
    3 {
        (Invoke-WebRequest "https://wttr.in/?m").Content
    }
}