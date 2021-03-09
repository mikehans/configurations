
Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'

function prompt {
    $path = $ExecutionContext.SessionState.Path.CurrentLocation.Path

    $HistoryId = $MyInvocation.HistoryId

    Write-Host
    Write-Host "$env:COMPUTERNAME " -ForegroundColor DarkGray -NoNewline
    Write-Host $path -ForegroundColor DarkGreen
    Write-host "[$HistoryId] " -ForegroundColor DarkYellow -NoNewline
    return "> "
}

Set-Alias repeat Invoke-History