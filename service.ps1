Set-ExecutionPolicy -ExecutionPolicy Unrestricted
$nssm = (Get-Command .\nssm).Source
$serviceName = 'FileWatch'
$powershell = (Get-Command powershell).Source
$scriptPath = "c:\watch\try-watch.ps1"
$arguments = '-ExecutionPolicy Bypass -File "{0}"' -f $scriptPath
& $nssm install $serviceName $powershell $arguments
& $nssm status $serviceName
Get-Service $serviceName
Start-Service $serviceName
Get-Service $serviceName