$Item = "E:\GitHub\LAPS_to_KeePass\Keepass\test1234.kdbx"
If ([System.IO.File]::Exists($Item)) {
    Try {
        $FileStream = [System.IO.File]::Open($Item,'Open','Write')
  
        $FileStream.Close()
        $FileStream.Dispose()
  
        $IsLocked = $False
    } Catch [System.UnauthorizedAccessException] {
        $IsLocked = 'AccessDenied'
    } Catch {
        $IsLocked = $True
    }
  }
  Write-Host $IsLocked

  [System.IO.File]::Open($Item,'Open','Write')

 cmd /c "openfiles /Query /fo csv /nh"
 openfiles /disconnect /id 671089042