md -Path $env:temp\chromeinstall -erroraction SilentlyContinue | Out-Null
$Download = join-path $env:temp\chromeinstall chrome_installer.exe
Invoke-WebRequest 'http://dl.google.com/chrome/install/375.126/chrome_installer.exe'  -OutFile $Download
Invoke-Expression "$Download /silent /install"