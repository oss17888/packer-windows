cmd /c "C:\Python27\python.exe" -m pip install --upgrade pip
cmd /c "C:\Python27\Scripts\pip.exe" install robotframework
cmd /c "C:\Python27\Scripts\pip.exe" install robotframework-ride
cmd /c "C:\Python27\Scripts\pip.exe" install robotframework-selenium2library

powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://effbot.org/downloads/PIL-1.1.7.win32-py2.7.exe')" <NUL
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/robotframework-autoitlibrary/AutoItLibrary-1.1.zip')" <NUL
