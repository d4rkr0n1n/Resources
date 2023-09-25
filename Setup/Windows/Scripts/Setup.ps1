# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install softwares
choco install vscode awscli git maven nodejs openjdk openjdk8 python vlc wget virtualbox vagrant terraform qbittorrent -y --force

# Refresh Environmet
Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1
refreshenv