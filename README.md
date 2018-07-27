# Collection of Custom Tanium [Sensors](#sensors) & [Packages](#packages)
**IMPORTANT - This is Unofficial Tanium Content. Please test all Sensors & Packages in a Lab/Dev Environment before using them in Production. These have not been tested or approved by anyone at Tanium and I am not liable for anything you may break using them.**

# [Sensors](https://github.com/PoppaShell/Tanium/tree/master/Sensors)
**[CbProtection_Client_Version.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CbProtection_Client_Version.ps1)**\
Displays the CbProtection Client Version.

**[CbProtection_Policy_Name.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CbProtection_Policy_Name.ps1)**\
Displays the CbProtection Policy Name.

**[CbProtection_Server_Exists.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CbProtection_Server_Exists.ps1)**\
Determines if the CbProtection Client has a Server Name specified in the Registry and returns a True or False accordingly.  

**[CbProtection_Server_Name.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CbProtection_Server_Name.ps1)**\
Displays the CbProtection Server Name.

**[CbProtection_Service_Status.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CbProtection_Service_Status.ps1)**\
Displays the CbProtection Service Status.

**[CbResponse_Sensor_Group.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CbResponse_Sensor_Group.ps1)**\
Displays the CbResponse Sensor Group. 

**[CbResponse_Server_Exists.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CbResponse_Server_Exists.ps1)**\
Determines if the CbResponse Client has a Server Name specified in the Registry and returns a True or False accordingly.

**[CbResponse_Server_Name.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CbResponse_Server_Name.ps1)**\
Displays the CbResponse Server Name.

**[CbResponse_Service_Status.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CbResponse_Service_Status.ps1)**\
Displays the CbResponse Service Status.

**[CylancePROTECT_Client_Version.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CylancePROTECT_Client_Version.ps1)**\
Displays the CylancePROTECT Client Version from the Status.json file located in "%ProgramData%\Cylance\Status\".

**[CylancePROTECT_Conn_Status.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CylancePROTECT_Conn_Status.ps1)**\
Displays the CylancePROTECT Connection Status from the Status.json file located in "%ProgramData%\Cylance\Status\".

**[CylancePROTECT_Exploits_Count.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CylancePROTECT_Exploits_Count.ps1)**\
Displays the CylancePROTECT Exploits Count from the Status.json file located in "%ProgramData%\Cylance\Status\".

**[CylancePROTECT_Last_Comm_Time.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CylancePROTECT_Last_Comm_Time.ps1)**\
Displays the CylancePROTECT Last Communicated Timestamp from the Status.json file located in "%ProgramData%\Cylance\Status\".

**[CylancePROTECT_Policy_Name.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CylancePROTECT_Policy_Name.ps1)**\
Displays the CylancePROTECT Policy Name from the Status.json file located in "%ProgramData%\Cylance\Status\".

**[CylancePROTECT_Scripts_Count.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CylancePROTECT_Scripts_Count.ps1)**\
Displays the CylancePROTECT Scripts Count from the Status.json file located in "%ProgramData%\Cylance\Status\".

**[CylancePROTECT_Service_Status.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CylancePROTECT_Service_Status.ps1)**\
Displays the CylancePROTECT Service Status. 

**[CylancePROTECT_Threats_Count.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CylancePROTECT_Threats_Count.ps1)**\
Displays the CylancePROTECT Threats Count from the Status.json file located in "%ProgramData%\Cylance\Status\".

**[CylancePROTECT_Token_Exsists.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CylancePROTECT_Token_Exsists.ps1)**\
Determines if the CylancePROTECT Client has a Token or not and returns a True or False accordingly. If a Token is not found, the system can't connect to the Cloud Console. It's also therefore in an unprotected state once it has lost the Token and has had a reboot. You can use the [CylancePROTECT_Install_Token.ps1](https://github.com/PoppaShell/Tanium/blob/master/Packages/CylancePROTECT_Install_Token.ps1) Package to install your company's Token to the Client.

**[Display_Local_Admins.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/Display_Local_Admins.ps1)**\
Displays the Local Admin Data that was created from running the [Collect_Local_Admins.ps1](https://github.com/PoppaShell/Tanium/blob/master/Packages/Collect_Local_Admins.ps1) Package. If the data file ("<Tanium_Install_Directory>\AdQuery\LocalAdmins.dat") is present, it will display the contents. Otherwise, it will display "No Result". You will need to configure the output to use the comma separated option with two columns. The first column should be titled "Computer Name" and the second "Account Name", both with the Result Type set to "Text".

**[MD5_Hash_Of_Tanium_Index_Config.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/MD5_Hash_Of_Tanium_Index_Config.ps1)**\
Displays the MD5 Hash of the Tanium Index Configuration file. This is used to make sure your endpoints have the expected latest configuration you have pushed out. If it doesn't, you can assign an action to update the configuration. There is also a native Tanium Sensor that can be used to display the Conf File Version, if you have used the proper Version syntax in the Conf File. This was either not available or I didn't know about it when I wrote this Sensor. But in my opinion, hashing the Conf File is also a great way to do it.

**[SCCM_Agent_Service_Status.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/SCCM_Agent_Service_Status.ps1)**\
Displays the SCCM Agent Service Status.

**[SplunkForwarder_Service_Status.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/SplunkForwarder_Service_Status.ps1)**\
Displays the SplunkForwarder Service Status.


# [Packages](https://github.com/PoppaShell/Tanium/tree/master/Packages)
**[CylancePROTECT_Install_Token.ps1](https://github.com/PoppaShell/Tanium/blob/master/Packages/CylancePROTECT_Install_Token.ps1)**\
Used to push the CylancePROTECT InstallToken to the registry for any 32-bit or 64-bit Windows system. **You MUST update the $RegKeyData Variable with your Company's Install Token for this Package to work.** For the CylancePROTECT Client to be able to ingest the "InstallToken" Key, the CylancePROTECTSvc Service must be running. If the Service is running, it will ingest the "InstallToken" Key and you will then see it disappear and the "LastStateRestorePoint" Key will then be present. If that doesn't happen after a short period of time, you may have a firewall issue where the Client can't communicate to the Cloud Console or a corrupt install and it needs to be reinstalled. You can use the [CylancePROTECT_Token_Exsists.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/CylancePROTECT_Token_Exsists.ps1) Sensor to discover Systems that have lost or never recieved their InstallToken.

**[Collect_Local_Admins.ps1](https://github.com/PoppaShell/Tanium/blob/master/Packages/Collect_Local_Admins.ps1)**\
Extracts all users, local or domain, from the Local Administrators Group and writes the results to "<Tanium_Install_Directory>\AdQuery\LocalAdmins.dat". This data can then be queried using the [Display_Local_Admins.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/Display_Local_Admins.ps1) Sensor. **It is recommended to spread this package deployment over time due to a small LDAP Query that is made each time the Package is ran. This avoids over loading the DC(s). You would then schedule the package to be reoccurring at your chosen frequency to keep the data up to date.**

