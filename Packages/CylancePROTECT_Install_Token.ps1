$RegKeyName="HKLM\Software\Cylance\Desktop"
$RegKeyValue="InstallToken"
$RegKeyData="<YourCylanceInstallToken>"

if ($env:PROCESSOR_ARCHITEW6432){
    $CylanceTokenExists=(REG QUERY $RegKeyName /v $RegKeyValue /reg:64 | Select-Object -Skip 2) -replace ' ','' -replace '(?s)^.*REG_BINARY', ''
    if ($CylanceTokenExists){
        Write-Error "InstallToken Registry Key Already Exists"
        }
    else {
        REG ADD $RegKeyName /reg:64 /v $RegKeyValue /t REG_SZ /d $RegKeyData /f
        }
    }
elseif (!$env:PROCESSOR_ARCHITEW6432){
    $CylanceTokenExists=(REG QUERY $RegKeyName /v $RegKeyValue /reg:32 | Select-Object -Skip 2) -replace ' ','' -replace '(?s)^.*REG_BINARY', ''
    if ($CylanceTokenExists){
        Write-Error "InstallToken Registry Key Already Exists"
        }
    else {
        REG ADD $RegKeyName /reg:32 /v $RegKeyValue /t REG_SZ /d $RegKeyData /f
        }
    }
else {
    Write-Error "CPU Architecture Not Found"
    }
