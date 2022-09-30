
# XDG Standard

set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share

# XDG Home Directory Cleanup

set -gx WAKATIME_HOME $XDG_CONFIG_HOME/wakatime
set -gx NUGET_PACKAGES $XDG_CONFIG_HOME/NuGetPackages

#Editors

set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx BROWSER google-chrome

# go

set -gx GOROOT /usr/local/go
set -gx GOPATH $HOME/Workspace/goProjects

set PATH $PATH $HOME/.dotfiles/scripts
set PATH $PATH $HOME/.local/bin

source ~/.config/fish/abbr.fish    
zoxide init fish | source
starship init fish | source
fish_ssh_agent
