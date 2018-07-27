$RegKeyValue="B9_HOSTGROUP"
if ($env:PROCESSOR_ARCHITEW6432){
    $B9Policy=(REG QUERY "HKLM\Software\WOW6432Node\Bit9\Parity Agent\ServerSettings" /v $RegKeyValue /reg:64 | Select-Object -Skip 2) -replace '(?s)^.*REG_SZ    ', ''
    if ($B9Policy){
        $B9Policy
        }
    else {
        Write "No Result"
        }  
    }
elseif (!$env:PROCESSOR_ARCHITEW6432){
    $B9Policy=(REG QUERY "HKLM\Software\Bit9\Parity Agent\ServerSettings" /v $RegKeyValue /reg:32 | Select-Object -Skip 2) -replace '(?s)^.*REG_SZ    ', ''
    if ($B9Policy){
        $B9Policy
        }
    else {
        Write "No Result"
        }  
    }
else {
    Write "CPU Architecture Not Found"
    }
