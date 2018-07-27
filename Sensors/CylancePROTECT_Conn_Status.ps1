Add-Type -Assembly System.Web.Extensions
$StatusJSON="$env:ProgramData\Cylance\Status\Status.json"
$StatusJSONExists = [System.IO.File]::Exists("$StatusJSON")

If ($StatusJSONExists -eq $False){
    Write "File Not Found"
    }
Else {
    $StatusJSONContent=Get-Content $StatusJSON
    $Output=(New-Object System.Web.Script.Serialization.JavaScriptSerializer).DeserializeObject($StatusJSONContent)
    $Output.Policy.type
    }
