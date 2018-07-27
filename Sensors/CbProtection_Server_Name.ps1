$RegKeyValue="B9_SERVER_IP"
if ($env:PROCESSOR_ARCHITEW6432){
    $B9Server=(REG QUERY "HKLM\Software\WOW6432Node\Bit9\Parity Agent\ServerSettings" /v $RegKeyValue /reg:64 | Select-Object -Skip 2) -replace ' ','' -replace '(?s)^.*REG_SZ', ''
    if ($B9Server){
        $B9Server
        }
    else {
        Write "No Result"
        }  
    }
elseif (!$env:PROCESSOR_ARCHITEW6432){
    $B9Server=(REG QUERY "HKLM\Software\Bit9\Parity Agent\ServerSettings" /v $RegKeyValue /reg:32 | Select-Object -Skip 2) -replace ' ','' -replace '(?s)^.*REG_SZ', ''
    if ($B9Server){
        $B9Server
        }
    else {
        Write "No Result"
        }  
    }
else {
    Write "CPU Architecture Not Found"
    }
