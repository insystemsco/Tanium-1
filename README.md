# Collection of Tanium [Sensors](#sensors) & [Packages](#packages)

# Sensors
**Cylance_Client_Version.ps1**\
Tanium Sensor for Cylance to pull the Client Version from the Status.json file located in %ProgramData%\Cylance\".

**Cylance_Conn_Status.ps1**\
Tanium Sensor for Cylance to pull the Connection Status from the Status.json file located in %ProgramData%\Cylance\".

**Cylance_Exploits_Count.ps1**\
Tanium Sensor for Cylance to pull the Exploits Count from the Status.json file located in %ProgramData%\Cylance\".

**Cylance_Last_Comm_Time.ps1**\
Tanium Sensor for Cylance to pull the Last Communicated Timestamp from the Status.json file located in %ProgramData%\Cylance\".

**Cylance_Policy_Name.ps1**\
Tanium Sensor for Cylance to pull the Policy Name from the Status.json file located in %ProgramData%\Cylance\".

**Cylance_Scripts_Count.ps1**\
Tanium Sensor for Cylance to pull the Scripts Count from the Status.json file located in %ProgramData%\Cylance\".

**Cylance_Threats_Count.ps1**\
Tanium Sensor for Cylance to pull the Threats Count from the Status.json file located in %ProgramData%\Cylance\".

**Cylance_Token_Exsists.ps1**\
Tanium Sensor to enumerate if the Cylance Client has a Token or not. It will return a True or False accordingly. If a Token is not found, the system can't connect to a Cloud Console. It is also in an unprotected state once it has lost the Token and had a reboot. You can use the "Push_Cylance_Token.ps1" Package to push your company's Token to the Client.

**Display_Local_Admins.ps1**\
Tanium Sensor to display the Local Admin Data that was created from running the Package using the "Collect_Local_Admins.ps1" script. If the data file ("<Tanium_Install_Directory\AdQuery\LocalAdmins.dat") is present, it will display the contents. Otherwise, it will display not result. The output is to be configured to use the comma separated option for two columns. The first column should be titled "Computer Name" and the second "Account Name", both with the Result Type set to "Text".

**MD5_Hash_Of_Index_Config.ps1**\
Tanium Sensor to grab the MD5 Hash of the Tanium Index Configuration file. This is used to make sure your endpoints have the expected latest configuration you have pushed out. If it does not, you can assign an action to update the configuration.


# Packages
**Push_Cylance_Token.ps1**\
This Package can be used to push the Cylance InstallToken to the registry for any 32-bit or 64-bit system. For the Cylance Client to be able to ingest the "InstallToken" Key, the CylanceSvc Service must be running. If the Service is running, it will ingest the "InstallToken" Key and you will then see it disappear and the "LastStateRestorePoint" Key will then be present. If that doesn't happen after a short period of time, you may have a firewall issue where the Client can't communicate to the Cloud Console or a corrupt install and it needs to be reinstalled. You can use the "Cylance_Token_Exsists.ps1" Sensor to discover Systems that have lost or never recieved their InstallToken.

**Collect_Local_Admins.ps1**\
Tanium Package to enumerate any users, local or domain, that is in the Local Administrators Group. It will write the results to "<Tanium_Install_Directory\AdQuery\LocalAdmins.dat", which can then be queried with a Sensor using the "Display_Local_Admins.ps1" script. It is recommended to spread this package deployment over time due to a small LDAP Query that is made each time the package is ran. You would then schedule the package to be reoccurring to keep the data up to date.

