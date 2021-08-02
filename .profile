function Prompt {
    # $curtime = (Get-Date -Format "ddd,MMM dd,HH:mm:ss")
    $curtime = (Get-Date -Format "HH:mm:ss")
    $curDir =  Get-Location
    $disDir = ( $curDir -split '\\' | select -last 3 ) -join '\'

    # Write-Host -NoNewLine "`n$curUser" -foregroundColor $foregroundColor
    # Write-Host -NoNewLine "@" -foregroundColor Green
    # Write-Host -NoNewLine "$curComp" -foregroundColor $foregroundColor
    Write-Host -NoNewLine "`n[" -foregroundColor Blue
    Write-Host -NoNewLine $curtime -foregroundColor Yellow
    Write-Host -NoNewLine "] " -foregroundColor Blue
    Write-Host -NoNewLine $disDir -foregroundColor Green
    Write-Host -NoNewLine " >>" -foregroundColor Red

    # $host.UI.RawUI.WindowTitle = "PS >> User: $curUser >> Current DIR: $((Get-Location).Path)"

    Return " "
}
