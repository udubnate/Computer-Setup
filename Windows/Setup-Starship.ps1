# Can you script out this guide in powershell https://mkabumattar.com/blog/post/customization-windows-terminal-with-starship

# Install Scoop (if not already installed)
if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Scoop..."
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
}

# Ensure Scoop is in the PATH
$env:Path += ";$($env:USERPROFILE)\scoop\shims"

# Install Starship using Scoop
if (-not (Get-Command starship -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Starship..."
    scoop install starship
}

# Install a Nerd Font (e.g., FiraCode Nerd Font)
if (-not (Test-Path "$env:USERPROFILE\scoop\apps\nerd-fonts\current")) {
    Write-Host "Installing FiraCode Nerd Font..."
    scoop bucket add nerd-fonts
    scoop install FiraCode-NF
}

# Configure Starship
$starshipConfigPath = "$env:USERPROFILE\.config\starship.toml"
if (-not (Test-Path $starshipConfigPath)) {
    Write-Host "Creating Starship configuration file..."
    New-Item -ItemType Directory -Path (Split-Path $starshipConfigPath) -Force | Out-Null
    @"
# Starship Configuration File
# Add your customizations here
[character]
success_symbol = "[➜](bold green)"
error_symbol = "[✗](bold red)"
"@ | Set-Content -Path $starshipConfigPath
}

# Add Starship initialization to PowerShell profile
$profilePath = $PROFILE
if (-not (Test-Path $profilePath)) {
    Write-Host "Creating PowerShell profile..."
    New-Item -ItemType File -Path $profilePath -Force | Out-Null
}

if (-not (Select-String -Path $profilePath -Pattern "starship init powershell" -Quiet)) {
    Write-Host "Adding Starship initialization to PowerShell profile..."
    Add-Content -Path $profilePath -Value 'Invoke-Expression (&starship init powershell)'
}

Write-Host "Setup complete! Restart your terminal to see the changes."