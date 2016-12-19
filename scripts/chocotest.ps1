$chocoExePath = 'C:\ProgramData\Chocolatey\bin'

if ($($env:Path).ToLower().Contains($($chocoExePath).ToLower())) {
  echo "Chocolatey found in PATH, skipping install..."
  Exit
}

# Add to system PATH
$systemPath = [Environment]::GetEnvironmentVariable('Path',[System.EnvironmentVariableTarget]::Machine)
$systemPath += ';' + $chocoExePath
[Environment]::SetEnvironmentVariable("PATH", $systemPath, [System.EnvironmentVariableTarget]::Machine)

# Update local process' path
$userPath = [Environment]::GetEnvironmentVariable('Path',[System.EnvironmentVariableTarget]::User)
if($userPath) {
  $env:Path = $systemPath + ";" + $userPath
} else {
  $env:Path = $systemPath
}

# Run the installer
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

powershell -Command "choco install opencv -y"
powershell -Command "choco install sikulix -y"
powershell -Command "choco install googlechrome -y"
powershell -Command "choco install winrar -y"
powershell -Command "choco install jre8 -y"
powershell -Command "choco install firefox -y"
powershell -Command "choco install javaruntime -y"
powershell -Command "choco install notepadplusplus.install -y"
powershell -Command "choco install git.install -y"
powershell -Command "choco install filezilla -y"
powershell -Command "choco install dotnet4.5 -y"
powershell -Command "choco install autoit -y"
powershell -Command "choco install scite4autoit3 -y"
powershell -Command "choco install jivkok.sublimetext3.packages -y"
powershell -Command "choco install chromedriver2 -y"
powershell -Command "choco install seleniumgridinabox.node -y"
powershell -Command "choco install selenium-all-drivers -y"
powershell -Command "choco install selenium-chrome-drive -y"
powershell -Command "choco install selenium-opera-driver -y"
powershell -Command "choco install seleniumhub -y"
powershell -Command "choco install selenium-edge-driver -y"
powershell -Command "choco install selenium-gecko-driver -y"
powershell -Command "choco install python2 -y"
powershell -Command "choco install pip -y"
powershell -Command "choco install pywin32 -y"
powershell -Command "choco install pycharm-community -y"
powershell -Command "choco install python-wxwidgets -y"
powershell -Command "choco install twisted -y"
powershell -Command "choco install weka -y"
powershell -Command "choco install knime-full.install -y"
powershell -Command "choco install ultravnc -y"
powershell -Command "choco install mobaxterm -y"
powershell -Command "choco install wireshark -y"
powershell -Command "choco install zap -y"
powershell -Command "choco install packer -y"
powershell -Command "choco install packer-windows-plugins -y"
powershell -Command "choco install docker -y"
powershell -Command "choco install docker-machine -y"
powershell -Command "choco install docker-compose -y"
powershell -Command "choco install boot2docker -y"
powershell -Command "choco install nexus-repository -y"
powershell -Command "choco install powerdelivery3 -y"
powershell -Command "choco install intellijidea-ultimate -y"
powershell -Command "choco install xmind -y"