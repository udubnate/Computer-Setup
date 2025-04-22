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

## Additional tools and utilities
winget install Mozilla.Firefox
winget install Canonical.Ubuntu
winget install Python.Python.3.13

#VSCode Extensions
code --install-extension ms-python.python
code --install-extension ms-vscode.powershell
code --install-extension github.copilot
code --install-extension github.copilot-chat
code --install-extension eamodio.gitlens
code --install-extension ms-azuretools.vscode-docker
