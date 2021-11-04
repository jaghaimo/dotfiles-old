@REM Fix network
powershell -executionpolicy bypass -file C:\tools\wsl2-network.ps1

@REM Start WSL and launch services
wsl --shutdown
wsl -u root -- service ssh start
wsl -u root -- service docker start