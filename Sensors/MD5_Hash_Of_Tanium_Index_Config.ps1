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

$TaniumFileInfo = "$TaniumDir\Tools\IR\TaniumFileInfo.exe"
$TaniumFileInfoExists = [System.IO.File]::Exists("$TaniumFileInfo")
$TanFileInfo = "$TaniumDir\Tools\IR\TanFileInfo.exe"
$TanFileInfoExists = [System.IO.File]::Exists("$TanFileInfo")
$TaniumIndexConfig = "$TaniumDir\Tools\EPI\config.ini"
$TaniumIndexConfigExists = [System.IO.File]::Exists("$TaniumIndexConfig")

If ($TaniumFileInfoExists -eq $True){
    $HashTool = $TaniumFileInfoExists
    }
ElseIf ($TanFileInfoExists -eq $True){
    $HashTool = $TanFileInfo
    }
Else {
    Write "Tanium IR Tools Not Installed"
    Exit
    }

If ($TaniumIndexConfigExists -eq $True){
    $(& "$HashTool" --timeout 15 attrs --column md5 "$TaniumIndexConfig") -replace ".+?(?=[a-f0-9]{32})",""
    }
Else {
    Write "Tanium Index Config Not Found"
    Exit
    }
