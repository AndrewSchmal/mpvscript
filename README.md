# MPV Screenshot Mover

This PowerShell script automates the process of renaming and moving MPV screenshots from the Desktop to a designated folder.

## Features
- Scans an existing **screenshots** folder to find the last used screenshot number.
- Renames new screenshots from the Desktop to continue the sequence (`mpv-shotXXX.jpg`).
- Moves the renamed screenshots to the target folder.

## Usage
1. Save the script as `mpvScreenshotMover.ps1`.
2. Open **PowerShell** and navigate to the folder containing the script:
   ```powershell
   cd "C:\path\to\script"

Run the script:

If running the script from the saved file:

.\mpvScreenshotMover.ps1

If you want to copy-paste the script directly into PowerShell, open a PowerShell window, paste the script, and press Enter.

If you get a security warning, you may need to enable script execution by running:

Set-ExecutionPolicy Unrestricted -Scope Process

(or run PowerShell in administrative mode)

## Configuration
Default screenshot directory: E:\Screenshots
Modify the $oldPath variable in the script if you want to change the destination folder.

## Notes

Requires PowerShell on Windows.
Screenshots must be in .jpg format.
The script assumes filenames follow the mpv-shotXXX.jpg format.
If the script does not run due to permission issues, try running PowerShell as Administrator.