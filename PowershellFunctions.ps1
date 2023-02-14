function Update-GitHub {
    [CmdletBinding()]
    param (
    )
    if (Get-Command -Name git -CommandType Application) {
        git pull
    }
    else {
        Write-Verbose -Message "Git is not installed"
    }
}