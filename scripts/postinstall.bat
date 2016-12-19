cmd /c "C:\Python27\python.exe" -m pip install --upgrade pip
cmd /c "C:\Python27\Scripts\pip.exe" install robotframework
cmd /c "C:\Python27\Scripts\pip.exe" install robotframework-ride
cmd /c "C:\Python27\Scripts\pip.exe" install robotframework-selenium2library

powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/lightkeeper/lswindows-lib/blob/master/amd64/python/PIL-1.1.7.win-amd64-py2.7.exe?raw=true', 'C:\Users\vagrant\PIL117.exe')" <NUL
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/robotframework-autoitlibrary/AutoItLibrary-1.1.zip', 'C:\Users\vagrant\AutoItLibrary-1.1.zip')" <NUL
# cmd /c ""C:\Program Files\7-Zip\7z.exe" x C:\Users\vagrant\AutoItLibrary-1.1.zip -oC:\Users\vagrant"
# cd AutoItLibrary-1.1
# cmd /c "C:\Python27\python.exe" setup.py install