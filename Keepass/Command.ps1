# Ref.: https://www.youtube.com/watch?v=BEanSOlYqSU
# Open Database
cmd /c "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\KeePass.exe" "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\MFLKPLAB.kdbx" -pw:"F1nance51!"

# List ALL entries
cmd /c "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\KPScript.exe" -c:Listentries "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\MFLKPLAB.kdbx" -pw:"F1nance51!"

# Output file using UUID
cmd /c "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\KPScript.exe" -c:GetEntryString "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\MFLKPLAB.kdbx" -pw:"F1nance51!" -Field:Title -refx-UUID:"E29C234750FE5F419BF82051257E51A4"

# Output password using UUID
cmd /c "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\KPScript.exe" -c:GetEntryString "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\MFLKPLAB.kdbx" -pw:"F1nance51!" -Field:Password -refx-UUID:"E29C234750FE5F419BF82051257E51A4"

# Generate excrypted password for MFLKPLAB.kdbx

# Use encryted .kdbx password
cmd /c "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\KPScript.exe" -c:GetEntryString "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\MFLKPLAB.kdbx" -pw-enc:"AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAABYGq94aWTk+WM3tnTlBsnQAAAAACAAAAAAADZgAAwAAAABAAAABf6KDiVVFfNZEmm4XpN0HuAAAAAASAAACgAAAAEAAAAFeX9i+tbukUd1r0zJpdkN8QAAAA/nU6ygR6BsYpFLoLJ9tEyBQAAABfJqxMh/ZIiEAEUTMvPvkt4/1aOw==" -Field:Password -refx-UUID:"E29C234750FE5F419BF82051257E51A4"

# Read about {PASSWORD_ENC}
<#
 # https://sourceforge.net/p/keepass/discussion/
 find : what does it use to encrypt
#>

# Export list
cmd /c "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\KPScript.exe"  -c:Export "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\MFLKPLAB.kdbx" -pw-enc:"AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAABYGq94aWTk+WM3tnTlBsnQAAAAACAAAAAAADZgAAwAAAABAAAABf6KDiVVFfNZEmm4XpN0HuAAAAAASAAACgAAAAEAAAAFeX9i+tbukUd1r0zJpdkN8QAAAA/nU6ygR6BsYpFLoLJ9tEyBQAAABfJqxMh/ZIiEAEUTMvPvkt4/1aOw==" -Field:Password -refx-UUID:"E29C234750FE5F419BF82051257E51A4" -Format:"KeePass XML (2.x)" -OutFile:"\\az140-21-p1-0\LAPS_to_KeePass\Keepass\Output.xml"

# Import list
cmd /c "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\KPScript.exe"  -c:Import "\\az140-21-p1-0\LAPS_to_KeePass\Keepass\MFLKPLAB.kdbx" -pw-enc:"AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAABYGq94aWTk+WM3tnTlBsnQAAAAACAAAAAAADZgAAwAAAABAAAABf6KDiVVFfNZEmm4XpN0HuAAAAAASAAACgAAAAEAAAAFeX9i+tbukUd1r0zJpdkN8QAAAA/nU6ygR6BsYpFLoLJ9tEyBQAAABfJqxMh/ZIiEAEUTMvPvkt4/1aOw==" -Field:Password -refx-UUID:"E29C234750FE5F419BF82051257E51A4" -Format:"KeePass XML (2.x)" -MM:OverwriteIfNewer  -File:"\\az140-21-p1-0\LAPS_to_KeePass\Keepass\Output.xml"

