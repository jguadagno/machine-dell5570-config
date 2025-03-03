# Initial common vairables
$MyDocumentsFolder = [Environment]::GetFolderPath('MyDocuments')

# Get the latest UniGet Bundle
$UniGetFolder = $MyDocumentsFolder + "\UniGetUi"
$UniGetBackupName = "UniGet Installed Packages.json"
$NewestFile = Get-ChildItem -Path $UniGetFolder -Filter "*.ubundle" -File | Sort-Object LastWriteTime -Descending | Select-Object -First 1
Copy-Item -Path $NewestFile.FullName -Destination $UniGetBackupName
git add $UniGetBackupName

# Get the latest PowerShell_profile
Copy-Item -Path $PROFILE
git add .

# Commit the updated files to git
$gitMessage = "Updated files  $(Get-Date)"
git commit -m $gitMessage
git push