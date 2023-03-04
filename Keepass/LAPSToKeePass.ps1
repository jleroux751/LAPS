# Get all computer with LAPS passwords
$computers = Get-ADComputer -Filter {ms-Mcs-AdmPwd -like "*"} -Properties ms-Mcs-AdmPwd,operatingsystem | select @{Label="Name";Expression={$_.name}}, @{Label="OS";Expression={$_.operatingsystem}}, @{Label="Distinguished name";Expression={$_.'distinguishedname'}},@{Label="Password";Expression={$_.'ms-Mcs-AdmPwd'}}

# Date used for all date values
$date = Get-Date -UFormat '+%Y-%m-%dT%H:%M:%S.000Z';

# Creates XML document object
[xml]$doc = New-Object System.Xml.XmlDocument

# Add XML declaration 
$dec = $Doc.CreateXmlDeclaration("1.0","UTF-8",$null);
$doc.AppendChild($dec) | Out-Null;

# The actual root mode of the XML document. Called KeePassFile
# KeePassFile
$keePassFile = $doc.CreateNode("element","KeePassFile",$null);
$doc.AppendChild($keePassFile) | Out-Null;

# A node called root but is actually a child of the actual root node KeePassFile
# KeePassFile > Root
$root = $doc.CreateNode("element","Root",$null);
$keePassFile.AppendChild($root) | Out-Null;

# The main group in KeePass called Database
# KeePassFile > Root > Group
$group = $doc.CreateNode("element","Group",$null);
$root.AppendChild($group) | Out-Null;

# KeePassFile > Root > Group > UUID
$node = $doc.CreateNode("element","UUID",$null);
$node.InnerText = "dwtCYiH+ZEmmEzshjUqaWA==";
$group.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Name
$node = $doc.CreateNode("element","Name",$null);
$node.InnerText = "Database";
$group.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Notes
$node = $doc.CreateNode("element","Notes",$null);
$node.InnerText = "";
$group.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > IconID
$node = $doc.CreateNode("element","IconID",$null);
$node.InnerText = "49";
$group.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Times
$times = $doc.CreateNode("element","Times",$null);
$times.InnerText = "";
$group.AppendChild($times) | Out-Null;

# KeePassFile > Root > Group > Times > CreationTime
$node = $doc.CreateNode("element","CreationTime",$null);
$node.InnerText = $date;
$times.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Times > LastModificationTime
$node = $doc.CreateNode("element","LastModificationTime",$null);
$node.InnerText = $date;
$times.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Times > LastAccessTime
$node = $doc.CreateNode("element","LastAccessTime",$null);
$node.InnerText = $date;
$times.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Times > ExpiryTime
$node = $doc.CreateNode("element","ExpiryTime",$null);
$node.InnerText = $date;
$times.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Times > Expires
$node = $doc.CreateNode("element","Expires",$null);
$node.InnerText = "False";
$times.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Times > UsageCount
$node = $doc.CreateNode("element","UsageCount",$null);
$node.InnerText = "0";
$times.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Times > LocationChanged
$node = $doc.CreateNode("element","LocationChanged",$null);
$node.InnerText = $date;
$times.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > IsExpanded
$node = $doc.CreateNode("element","IsExpanded",$null);
$node.InnerText = "True";
$group.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > DefaultAutoTypeSequence
$node = $doc.CreateNode("element","DefaultAutoTypeSequence",$null);
$node.InnerText = "";
$group.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > EnableAutoType
$node = $doc.CreateNode("element","EnableAutoType",$null);
$node.InnerText = "null";
$group.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > EnableSearching
$node = $doc.CreateNode("element","EnableSearching",$null);
$node.InnerText = "null";
$group.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > LastTopVisibleEntry
$node = $doc.CreateNode("element","LastTopVisibleEntry",$null);
$node.InnerText = "AAAAAAAAAAAAAAAAAAAAAA==";
$group.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group
$subGroup = $doc.CreateNode("element","Group",$null);
$subGroup.InnerText = "";
$group.AppendChild($subGroup) | Out-Null;

# KeePassFile > Root > Group > Group > UUID
$node = $doc.CreateNode("element","UUID",$null);
$node.InnerText = "SAKp8Sn4wU6wQ5hTV1AG0A==";
$subGroup.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Name
$node = $doc.CreateNode("element","Name",$null);
$node.InnerText = "LAPS";
$subGroup.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Notes
$node = $doc.CreateNode("element","Notes",$null);
$node.InnerText = "";
$subGroup.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > IconID
$node = $doc.CreateNode("element","IconID",$null);
$node.InnerText = "18";
$subGroup.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Times
$subGroupTimes = $doc.CreateNode("element","Times",$null);
$subGroupTimes.InnerText = "";
$subGroup.AppendChild($subGroupTimes) | Out-Null;

# KeePassFile > Root > Group > Group > Times > CreationTime
$node = $doc.CreateNode("element","CreationTime",$null);
$node.InnerText = $date;
$subGroupTimes.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Times > LastModificationTime
$node = $doc.CreateNode("element","LastModificationTime",$null);
$node.InnerText = $date;
$subGroupTimes.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Times > LastAccessTime
$node = $doc.CreateNode("element","LastAccessTime",$null);
$node.InnerText = $date;
$subGroupTimes.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Times > ExpiryTime
$node = $doc.CreateNode("element","ExpiryTime",$null);
$node.InnerText = $date;
$subGroupTimes.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Times > Expires
$node = $doc.CreateNode("element","Expires",$null);
$node.InnerText = "False";
$subGroupTimes.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Times > UsageCount
$node = $doc.CreateNode("element","UsageCount",$null);
$node.InnerText = "0";
$subGroupTimes.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Times > LocationChanged
$node = $doc.CreateNode("element","LocationChanged",$null);
$node.InnerText = $date;
$subGroupTimes.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > IsExpanded
$node = $doc.CreateNode("element","IsExpanded",$null);
$node.InnerText = "True";
$subGroup.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > DefaultAutoTypeSequence
$node = $doc.CreateNode("element","DefaultAutoTypeSequence",$null);
$node.InnerText = "";
$subGroup.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > EnableAutoType
$node = $doc.CreateNode("element","EnableAutoType",$null);
$node.InnerText = "null";
$subGroup.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > EnableSearching
$node = $doc.CreateNode("element","EnableSearching",$null);
$node.InnerText = "null";
$subGroup.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > LastTopVisibleEntry
$node = $doc.CreateNode("element","LastTopVisibleEntry",$null);
$node.InnerText = "AAAAAAAAAAAAAAAAAAAAAA==";
$subGroup.AppendChild($node) | Out-Null;

foreach ($computer in $computers)
{
# KeePassFile > Root > Group > Group > Entry
$entry = $doc.CreateNode("element","Entry",$null);
$entry.InnerText = "";
$subGroup.AppendChild($entry) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > UUID
$md5 = new-object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider;
$utf8 = new-object -TypeName System.Text.UTF8Encoding;
$hash = [System.BitConverter]::ToString($md5.ComputeHash($utf8.GetBytes($computer.Name)));
$guid = [guid]$hash.Replace("-","");
$bytes = $guid.ToByteArray()
$uuid = [convert]::ToBase64String($bytes)

$node = $doc.CreateNode("element","UUID",$null);
$node.InnerText = $uuid;
$entry.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > IconID
$node = $doc.CreateNode("element","IconID",$null);
$node.InnerText = "0";
$entry.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > ForegroundColor
$node = $doc.CreateNode("element","ForegroundColor",$null);
$node.InnerText = "";
$entry.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > BackgroundColor
$node = $doc.CreateNode("element","BackgroundColor",$null);
$node.InnerText = "";
$entry.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > OverrideURL
$node = $doc.CreateNode("element","OverrideURL",$null);
$node.InnerText = "";
$entry.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > Tags
$node = $doc.CreateNode("element","Tags",$null);
$node.InnerText = "";
$entry.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > Times
$entryTimes = $doc.CreateNode("element","Times",$null);
$entryTimes.InnerText = "";
$entry.AppendChild($entryTimes) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > Times > CreationTime
$node = $doc.CreateNode("element","CreationTime",$null);
$node.InnerText = $date;
$entryTimes.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > Times > LastModificationTime
$node = $doc.CreateNode("element","LastModificationTime",$null);
$node.InnerText = $date;
$entryTimes.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > Times > LastAccessTime
$node = $doc.CreateNode("element","LastAccessTime",$null);
$node.InnerText = $date;
$entryTimes.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > Times > ExpiryTime
$node = $doc.CreateNode("element","ExpiryTime",$null);
$node.InnerText = $date;
$entryTimes.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > Times > Expires
$node = $doc.CreateNode("element","Expires",$null);
$node.InnerText = "False";
$entryTimes.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > Times > UsageCount
$node = $doc.CreateNode("element","UsageCount",$null);
$node.InnerText = "0";
$entryTimes.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > Times > LocationChanged
$node = $doc.CreateNode("element","LocationChanged",$null);
$node.InnerText = $date;
$entryTimes.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String
$string1 = $doc.CreateNode("element","String",$null);
$string1.InnerText = "";
$entry.AppendChild($string1) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String > Key
$node = $doc.CreateNode("element","Key",$null);
$node.InnerText = "Notes";
$string1.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String > Value
$node = $doc.CreateNode("element","Value",$null);
$node.InnerText = $computer."Distinguished name";
$string1.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String
$string2 = $doc.CreateNode("element","String",$null);
$string2.InnerText = "";
$entry.AppendChild($string2) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String > Key
$node = $doc.CreateNode("element","Key",$null);
$node.InnerText = "Password";
$string2.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String > Password
$node = $doc.CreateNode("element","Value",$null);
$node.SetAttribute("ProtectInMemory","True");
$node.InnerText = $computer.Password;
$string2.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String
$string3 = $doc.CreateNode("element","String",$null);
$string3.InnerText = "";
$entry.AppendChild($string3) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String > Key
$node = $doc.CreateNode("element","Key",$null);
$node.InnerText = "Title";
$string3.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String > Value
$node = $doc.CreateNode("element","Value",$null);
$node.InnerText = $computer.Name;
$string3.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String
$string4 = $doc.CreateNode("element","String",$null);
$string4.InnerText = "";
$entry.AppendChild($string4) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String > Key
$node = $doc.CreateNode("element","Key",$null);
$node.InnerText = "URL";
$string4.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String > Value
$node = $doc.CreateNode("element","Value",$null);
$node.InnerText = "";
$string4.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String
$string5 = $doc.CreateNode("element","String",$null);
$string5.InnerText = "";
$entry.AppendChild($string5) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String > Key
$node = $doc.CreateNode("element","Key",$null);
$node.InnerText = "UserName";
$string5.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > String > Value
$node = $doc.CreateNode("element","Value",$null);
$node.InnerText = "";
$string5.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > AutoType
$autoType = $doc.CreateNode("element","AutoType",$null);
$autoType.InnerText = "";
$entry.AppendChild($autoType) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > AutoType > Enabled
$node = $doc.CreateNode("element","Enabled",$null);
$node.InnerText = "True";
$autoType.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > AutoType > DataTransferObfuscation
$node = $doc.CreateNode("element","DataTransferObfuscation",$null);
$node.InnerText = "0";
$autoType.AppendChild($node) | Out-Null;

# KeePassFile > Root > Group > Group > Entry > History
$history = $doc.CreateNode("element","History",$null);
$history.InnerText = "";
$entry.AppendChild($history) | Out-Null;
}

# Display XML
# $doc.InnerXml;
$doc.InnerXml | Out-File -FilePath "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\Output.xml"