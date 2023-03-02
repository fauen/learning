if (-not (Test-Path $env:HOMEPATH\.sltoken)) {
    Read-Host "Input API key" -MaskInput | Out-File -FilePath $env:HOMEPATH\.sltoken
    (Get-Item $env:HOMEPATH\.sltoken).Attributes += 'Hidden'
}

$sltoken = (Get-Content $env:HOMEPATH\.sltoken)
$sl = Invoke-WebRequest "http://api.sl.se/api2/realtimedeparturesv4.json?key=$sltoken&siteid=9160&timewindow=30&Bus=false"
$sljson = $sl.Content | ConvertFrom-Json

$qbigsmall = @"
1. All the info.
2. Just the time.
0. Exit
"@
$qbigsmall

$bigsmall = Read-Host "Which option do you want"
switch ($bigsmall) {
    1 {
        $sljson.ResponseData.Metros
    }
    2 {
        $sljson.ResponseData.Metros.DisplayTime
    }
    0 {
        break
    }
    Default {
        .\PowershellSL.ps1
    }
}

Clear-Variable sltoken
Clear-Variable sl
Clear-Variable sljson