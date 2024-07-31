# Define the path to the text file containing the PowerUp script content
$scriptFilePath = "C:\Path\To\powerup.txt"

# Read the content from the text file
$scriptContent = Get-Content -Path $scriptFilePath -Raw

# Execute the PowerShell commands from the file
Invoke-Expression $scriptContent
