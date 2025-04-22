# Make Directories C:\git\_gh and c:\git\_lse
New-Item -Path C:\git\_gh, C:\git\_lse -ErrorAction SilentlyContinue -Type Directory
# Set PowerShell Execution Policy to RemoteSigned
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force


