
# XDG Standard

set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share

# XDG Home Directory Cleanup

set -gx WAKATIME_HOME $XDG_CONFIG_HOME/wakatime
set -gx NUGET_PACKAGES $XDG_CONFIG_HOME/NuGetPackages

thefuck --alias | source
source ~/.config/fish/abbr.fish    
fish_ssh_agent
