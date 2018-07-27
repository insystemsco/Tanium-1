$RegKeyPath="HKLM\Software\Cylance\Desktop"
$RegKeyValue="LastStateRestorePoint"
if ($env:PROCESSOR_ARCHITEW6432){
    $CylanceToken=(REG QUERY $RegKeyPath /v $RegKeyValue /reg:64 | Select-Object -Skip 2) -replace ' ','' -replace '(?s)^.*REG_BINARY', ''
    if ($CylanceToken){
        Write "True"
        }
    else {
        Write "False"
        }  
    }
elseif (!$env:PROCESSOR_ARCHITEW6432){
    $CylanceToken=(REG QUERY $RegKeyPath /v $RegKeyValue /reg:32 | Select-Object -Skip 2) -replace ' ','' -replace '(?s)^.*REG_BINARY', ''
    if ($CylanceToken){
        Write "True"
        }
    else {
        Write "False"
        }  
    }
else {
    Write "CPU Architecture Not Found"
    }
