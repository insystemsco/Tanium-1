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

$TaniumAdQueryDir="$TaniumDir\Tools\AdQuery"
$TaniumAdQueryDirExists = [System.IO.Directory]::Exists("$TaniumAdQueryDir")
if($TaniumAdQueryDirExists -eq $False){
    New-Item -ItemType Directory -Path $TaniumAdQueryDir}
$AdminGroup = Get-WmiObject -ComputerName $env:COMPUTERNAME -Query "select * from Win32_GroupUser where GroupComponent=""Win32_Group.Domain='$env:COMPUTERNAME',Name='Administrators'""" -ErrorAction SilentlyContinue
if($AdminGroup -eq $Null){
    Write "Local Admins Not Found" > "$TaniumAdQueryDir\LocalAdmins.dat"
    }
else{
    $LocalAdmins = ($AdminGroup -match "(?<=Win32_UserAccount).*" | %{$_.PartComponent} | % {$_.substring($_.lastindexof("Domain=") + 7)}) -replace '["]','' -replace 'Name=','' -replace ',','\'
    if($LocalAdmins -eq $Null){
        Write "Local Admins Not Found" > "$TaniumAdQueryDir\LocalAdmins.dat"
        }
    else{
        $Result=foreach ($i in $LocalAdmins){
            $LocalAdmin=$i
            $FQDN=(Get-WmiObject Win32_ComputerSystem).DNSHostName+"."+(Get-WmiObject Win32_ComputerSystem).Domain
            $FQDN + "," + $LocalAdmin
            }
        $Result > "$TaniumAdQueryDir\LocalAdmins.dat"
        }
    }
