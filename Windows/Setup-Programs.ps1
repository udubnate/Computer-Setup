# Install essential tools and utilities
winget install Microsoft.PowerToys
winget install Obsidian.Obsidian
winget install Microsoft.VisualStudioCode
winget install Microsoft.PowerShell
winget install OpenJS.NodeJS

# Install development tools
winget install Docker.DockerDesktop
winget install Git.Git

# Install media and entertainment tools
winget install Spotify.Spotify

# Install remote access tools
winget install Microsoft.RemoteDesktopClient

# Update WSL (Windows Subsystem for Linux)
Wsl --update

# Install Starship prompt (for testing purposes)
winget install --id=Starship.Starship -e