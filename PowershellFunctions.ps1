function Update-GitHub {
    [CmdletBinding()]
    param (
    )
    if (Get-Command "git" -eq $true) {
        git pull
    }
    else {
        Write-Verbose -Message "Git is not installed"
    }
}