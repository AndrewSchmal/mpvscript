$oldPath = "E:\Screenshots"  # Destination folder
$newPath = "$env:USERPROFILE\Desktop"  # Current location

# Get all JPG files from Desktop
$files = Get-ChildItem -Path $newPath -Filter "*.jpg" | Sort-Object Name

# Find the last used number in the old folder
$lastFile = Get-ChildItem -Path $oldPath -Filter "mpv-shot*.jpg" | Sort-Object Name | Select-Object -Last 1
if ($lastFile) {
    $lastNum = [int]($lastFile.Name -replace "\D", "") # Extract number from filename
} else {
    $lastNum = 0
}

# Rename and move files
foreach ($file in $files) {
    $lastNum++
    $newName = "mpv-shot{0:D3}.jpg" -f $lastNum  # Format as mpv-shotXXX.jpg
    Move-Item -Path $file.FullName -Destination "$oldPath\$newName"
}

Write-Host "Renaming complete! Moved files to $oldPath."
