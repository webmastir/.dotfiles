function Prompt {
    # $curtime = (Get-Date -Format "ddd,MMM dd,HH:mm:ss")
    $curtime = (Get-Date -Format "HH:mm:ss")
    $curDir =  Get-Location
    $disDir = ( $curDir -split '\\' | select -last 3 ) -join '\'

    Write-Host -NoNewLine "`n[" -foregroundColor Blue
    Write-Host -NoNewLine $curtime -foregroundColor Yellow
    Write-Host -NoNewLine "] " -foregroundColor Blue
    Write-Host -NoNewLine $disDir -foregroundColor Green
    Write-Host -NoNewLine " >>" -foregroundColor Red

    Return " "
}
