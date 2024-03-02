# Define the user profile folder
$userProfile = "$env:USERPROFILE"

# Define the Chrome data folder paths
$cacheFolder = Join-Path $userProfile 'AppData\Local\Google\Chrome\User Data\Default\Cache'
$historyFile = Join-Path $userProfile 'AppData\Local\Google\Chrome\User Data\Default\History'
$cookiesFile = Join-Path $userProfile 'AppData\Local\Google\Chrome\User Data\Default\Cookies'
$webDataFile = Join-Path $userProfile 'AppData\Local\Google\Chrome\User Data\Default\Web Data'
$preferencesFile = Join-Path $userProfile 'AppData\Local\Google\Chrome\User Data\Default\Preferences'

# Function to delete a file if it exists
function Delete-FileIfExists($filePath) {
    if (Test-Path $filePath) {
        Remove-Item $filePath -Force
    }
}

# Delete the specified Chrome data
Delete-FileIfExists $cacheFolder
Delete-FileIfExists $historyFile
Delete-FileIfExists $cookiesFile
Delete-FileIfExists $webDataFile
Delete-FileIfExists $preferencesFile

# Display message before closing
Write-Host "Google Chrome data deleted successfully."

# Close PowerShell
exit
