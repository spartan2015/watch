function InstallService(
    [string] $MsDeployHost,
    [string] $ServiceName,
    [string] $DisplayName,
    [string] $ServicePath,
    [string] $ServiceDescription,
    [object] $Credential) {
    if($MsDeployHost -eq "local") {        
        New-Service -name $ServiceName -binaryPathName $ServicePath -displayName $ServiceName -StartupType Automatic
        Start-Service -name $ServiceName
    }