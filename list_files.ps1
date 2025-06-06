# Get the script's own directory to build a relative path
$ScriptDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path

# Define the output directory relative to the script's location
$OutputDirectory = Join-Path -Path $ScriptDirectory -ChildPath "history\project_files"

# Ensure the output directory exists
if (-not (Test-Path -Path $OutputDirectory)) {
    New-Item -ItemType Directory -Path $OutputDirectory | Out-Null
}

# Create a filename with Year-Month-Day-Hour-Minute format
$DateString = Get-Date -Format "yyyyMMdd-HHmm"
$FileName = "$DateString.txt"
$FullOutputPath = Join-Path -Path $OutputDirectory -ChildPath $FileName

# List items recursively from the script's directory, excluding any file or folder
# where any segment of the path starts with a '.' (e.g., .git, .vscode)
Get-ChildItem -Path $ScriptDirectory -Recurse -Force | Where-Object {
    # Check if any segment of the full path starts with a dot
    $PathSegments = $_.FullName.Split([System.IO.Path]::DirectorySeparatorChar)
    $Exclude = $false
    foreach ($Segment in $PathSegments) {
        if ($Segment.StartsWith(".")) {
            $Exclude = $true
            break
        }
    }
    -not $Exclude
} | Format-Table -AutoSize | Out-File -FilePath $FullOutputPath -Encoding utf8

Write-Host "File list saved to '$FullOutputPath'."