# allow scripts execution
Set-ExecutionPolicy remotesigned

# download and install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# download and install oh-my-posh
# winget install JanDeDobbeleer.OhMyPosh -s winget # installing via wingate doesn't work with admin
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))

# generate ssh key
ssh-keygen -t rsa -b 4096

# configuring ssh-agent
Get-Service ssh-agent | Set-Service -StartupType Automatic
[Environment]::SetEnvironmentVariable("GIT_SSH", "$((Get-Command ssh).Source)", [System.EnvironmentVariableTarget]::User)
