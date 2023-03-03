
## Export LAPS Passwords from Active Directory
$Computers = Get-ADComputer -Filter * -Properties ms-Mcs-AdmPwd, ms-Mcs-AdmPwdExpirationTime
$Computers | Sort-Object ms-Mcs-AdmPwdExpirationTime | Format-Table -AutoSize Name, DnsHostName, ms-Mcs-AdmPwd, ms-Mcs-AdmPwdExpirationTime
$computers | Export-Csv -path C:\Sources\LAPS\"LAPS-$((Get-Date).ToString("MM-dd-yyyy")).csv" -NoTypeInformation