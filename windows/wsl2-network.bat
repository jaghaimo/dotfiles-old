@REM Fix network (port forwarding)
powershell -executionpolicy bypass -file C:\tools\wsl2-network.ps1

@REM Launch WSL services
wsl -u root -- service ssh start
wsl -u root -- service docker start
