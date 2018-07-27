# Collection of Custom Tanium [Sensors](#sensors) & [Packages](#packages)
**IMPORTANT - This is Unofficial Tanium Content. Please test all Sensors & Packages in a Lab/Dev Environment before using them in Production. These have not been tested or approved from anyone at Tanium and I am not liable for anything your may break using them.**

# Sensors
**[Cylance_Client_Version.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/Cylance_Client_Version.ps1)**\
Pulls the Client Version from the Status.json file located in %ProgramData%\Cylance\".

**[Cylance_Conn_Status.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/Cylance_Conn_Status.ps1)**\
Pulls the Connection Status from the Status.json file located in %ProgramData%\Cylance\".

**[Cylance_Exploits_Count.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/Cylance_Exploits_Count.ps1)**\
Pulls the Exploits Count from the Status.json file located in %ProgramData%\Cylance\".

**[Cylance_Last_Comm_Time.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/Cylance_Last_Comm_Time.ps1)**\
Pulls the Last Communicated Timestamp from the Status.json file located in %ProgramData%\Cylance\".

**[Cylance_Policy_Name.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/Cylance_Policy_Name.ps1)**\
Pulls the Policy Name from the Status.json file located in %ProgramData%\Cylance\".

**[Cylance_Scripts_Count.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/Cylance_Scripts_Count.ps1)**\
Pulls the Scripts Count from the Status.json file located in %ProgramData%\Cylance\".

**[Cylance_Threats_Count.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/Cylance_Threats_Count.ps1)**\
Pulls the Threats Count from the Status.json file located in %ProgramData%\Cylance\".

**[Cylance_Token_Exsists.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/Cylance_Token_Exsists.ps1)**\
Determines if the Cylance Client has a Token or not and returns a True or False accordingly. If a Token is not found, the system can't connect to the Cloud Console. It's also therefore in an unprotected state once it has lost the Token and has had a reboot. You can use the [Push_Cylance_Token.ps1](https://github.com/PoppaShell/Tanium/blob/master/Packages/Push_Cylance_Token.ps1) Package to push your company's Token to the Client.

**[Display_Local_Admins.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/Display_Local_Admins.ps1)**\
Displays the Local Admin Data that was created from running the [Collect_Local_Admins.ps1](https://github.com/PoppaShell/Tanium/blob/master/Packages/Collect_Local_Admins.ps1) Package. If the data file ("<Tanium_Install_Directory>\AdQuery\LocalAdmins.dat") is present, it will display the contents. Otherwise, it will display "No Result". You will need to configure the output to use the comma separated option with two columns. The first column should be titled "Computer Name" and the second "Account Name", both with the Result Type set to "Text".

**[MD5_Hash_Of_Index_Config.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/MD5_Hash_Of_Index_Config.ps1)**\
Displays the MD5 Hash of the Tanium Index Configuration file. This is used to make sure your endpoints have the expected latest configuration you have pushed out. If it doesn't, you can assign an action to update the configuration. There is also a native Tanium Sensor that can be used to display the Conf File Version, if you have used the proper Version syntax in the Conf File. This was either not available or I didn't know about it when I wrote this Sensor. But in my opinion, hashing the Conf File is also a great way to do it.


# Packages
**[Push_Cylance_Token.ps1](https://github.com/PoppaShell/Tanium/blob/master/Packages/Push_Cylance_Token.ps1)**\
Used to push the Cylance InstallToken to the registry for any 32-bit or 64-bit Windows system. **You MUST update the $RegKeyData Variable with your Company's Install Token for this Package to work.** For the Cylance Client to be able to ingest the "InstallToken" Key, the CylanceSvc Service must be running. If the Service is running, it will ingest the "InstallToken" Key and you will then see it disappear and the "LastStateRestorePoint" Key will then be present. If that doesn't happen after a short period of time, you may have a firewall issue where the Client can't communicate to the Cloud Console or a corrupt install and it needs to be reinstalled. You can use the [Cylance_Token_Exsists.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/Cylance_Token_Exsists.ps1) Sensor to discover Systems that have lost or never recieved their InstallToken.

**[Collect_Local_Admins.ps1](https://github.com/PoppaShell/Tanium/blob/master/Packages/Collect_Local_Admins.ps1)**\
Extracts all users, local or domain, from the Local Administrators Group and writes the results to "<Tanium_Install_Directory>\AdQuery\LocalAdmins.dat". This data can then be queried using the [Display_Local_Admins.ps1](https://github.com/PoppaShell/Tanium/blob/master/Sensors/Display_Local_Admins.ps1) Sensor. **It is recommended to spread this package deployment over time due to a small LDAP Query that is made each time the Package is ran. This avoids over loading the DC(s). You would then schedule the package to be reoccurring at your chosen frequency to keep the data up to date.**

