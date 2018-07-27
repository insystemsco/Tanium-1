$RegKeyPath="HKLM\Software\CarbonBlack\config"
$RegKeyValue="SensorBackendServer"
if ($env:PROCESSOR_ARCHITEW6432){
    $CbServer=(REG QUERY $RegKeyPath /v $RegKeyValue /reg:64 | Select-Object -Skip 2) -replace ' ','' -replace '(?s)^.*REG_BINARY', ''
    if ($CbServer){
        Write "True"
        }
    else {
        Write "False"
        }  
    }
elseif (!$env:PROCESSOR_ARCHITEW6432){
    $CbServer=(REG QUERY $RegKeyPath /v $RegKeyValue /reg:32 | Select-Object -Skip 2) -replace ' ','' -replace '(?s)^.*REG_BINARY', ''
    if ($CbServer){
        Write "True"
        }
    else {
        Write "False"
        }  
    }
else {
    Write "CPU Architecture Not Found"
    }
