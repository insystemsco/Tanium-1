$TaniumRegx86 = "HKLM:Software\Tanium\Tanium Client"
$TaniumRegx64 = "HKLM:Software\Wow6432Node\Tanium\Tanium Client"
$TaniumDirx86 = Get-ItemProperty $TaniumRegx86 -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path
$TaniumDirx64 = Get-ItemProperty $TaniumRegx64 -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path

if($TaniumDirx86 -ne $Null){
    $TaniumDir = $TaniumDirx86
    }
elseif($TaniumDirx64 -ne $Null){
    $TaniumDir = $TaniumDirx64
    }
else{
    Write "Tanium Install Path Not Found"
    Exit
    }

$LocalAdminsDat="$TaniumDir\Tools\AdQuery\LocalAdmins.dat"
$LocalAdminsDatExists = [System.IO.File]::Exists("$LocalAdminsDat")
if($LocalAdminsDatExists -eq $True) {
    [System.IO.File]::ReadAllText("$LocalAdminsDat")
    }
else {
    Write "No Result,No Result"
    }
