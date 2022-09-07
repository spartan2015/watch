Import-Module "c:\watch\pswatch.psm1"
watch c:\ -includeDeleted | foreach {
Write-Output "$(Get-Date) $($_.Operation) on $($_.Path)"
"$(Get-Date) $($_.Operation) on $($_.Path)" | Out-File -FilePath c:\watch\file-log.log -Append
}