# Ref.: https://www.youtube.com/watch?v=BEanSOlYqSU
# Open Database
cmd /c "E:\Keepass\KeePass.exe" "E:\Keepass\test1234.kdbx" -pw:"1234"

# List ALL entries
cmd /c "E:\Keepass\KPScript.exe" -c:Listentries "E:\Keepass\test1234.kdbx" -pw:"1234"

# Output file using UUID
cmd /c "E:\Keepass\KPScript.exe" -c:GetEntryString "E:\Keepass\test1234.kdbx" -pw:"1234" -Field:Title -refx-UUID:"47E0AF373E0F0C478BCA86C30AEE3D5D"

# Output password using UUID
cmd /c "E:\Keepass\KPScript.exe" -c:GetEntryString "E:\Keepass\test1234.kdbx" -pw:"1234" -Field:Password -refx-UUID:"47E0AF373E0F0C478BCA86C30AEE3D5D"

# Generate excrypted password for test1234.kdbx

# Use encryted .kdbx password
cmd /c "E:\Keepass\KPScript.exe" -c:GetEntryString "E:\Keepass\test1234.kdbx" -pw-enc:"AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAABYGq94aWTk+WM3tnTlBsnQAAAAACAAAAAAADZgAAwAAAABAAAACnoovw8ErOHeHECks+CAePAAAAAASAAACgAAAAEAAAAP3TJeezC1Uhy4KMBLPG8ncIAAAAFh3RZxFhSWYUAAAATX78eBfjNvrFJIZA2oQMO8QJloM=" -Field:Password -refx-UUID:"47E0AF373E0F0C478BCA86C30AEE3D5D"

# Read about {PASSWORD_ENC}
<#
 # https://sourceforge.net/p/keepass/discussion/
 find : what does it use to encrypt
#>

# Export list
cmd /c "E:\Keepass\KPScript.exe"  -c:Export "E:\Keepass\test1234.kdbx" -pw-enc:"AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAABYGq94aWTk+WM3tnTlBsnQAAAAACAAAAAAADZgAAwAAAABAAAACnoovw8ErOHeHECks+CAePAAAAAASAAACgAAAAEAAAAP3TJeezC1Uhy4KMBLPG8ncIAAAAFh3RZxFhSWYUAAAATX78eBfjNvrFJIZA2oQMO8QJloM=" -Field:Password -refx-UUID:"47E0AF373E0F0C478BCA86C30AEE3D5D" -Format:"KeePass XML (2.x)" -OutFile:"E:\Keepass\Output.xml"

# Import list
cmd /c "E:\Keepass\KPScript.exe"  -c:Import "E:\Keepass\test1234.kdbx" -pw-enc:"AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAABYGq94aWTk+WM3tnTlBsnQAAAAACAAAAAAADZgAAwAAAABAAAACnoovw8ErOHeHECks+CAePAAAAAASAAACgAAAAEAAAAP3TJeezC1Uhy4KMBLPG8ncIAAAAFh3RZxFhSWYUAAAATX78eBfjNvrFJIZA2oQMO8QJloM=" -Field:Password -refx-UUID:"47E0AF373E0F0C478BCA86C30AEE3D5D" -Format:"KeePass XML (2.x)" -MM:OverwriteIfNewer  -File:"E:\Keepass\Output.xml"
