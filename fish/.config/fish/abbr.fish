if status --is-interactive
    # Vim-like exit commants
    abbr --add --global -- :q exit
    abbr --add --global -- :q! exit
    abbr --add --global -- :wq exit
    #  Frequently used command abbreviations (e.g. swiftly clearing the screen)
    abbr --add --global -- c clear
    abbr --add --global -- l ls
    abbr --add --global -- .. cd ..
    # Course selection script to change the current course
    abbr --add --global -- cc /home/nathan/Courses/CourseSelection.fish
    # Quick movement to frequently used directories
    abbr --add --global -- cdc 'cd /home/nathan/Courses/'
    abbr --add --global -- cdd 'cd /home/nathan/Documents'
    abbr --add --global -- cdp 'cd /home/nathan/Workspace/expenseTrackerCli'
    abbr --add --global -- cds 'cd /home/nathan'
    abbr --add --global -- cdw 'cd /home/nathan/Workspace'
    # Git commands
    abbr --add --global -- gc 'git commit'
    abbr --add --global -- gca 'git commit -a'
    abbr --add --global -- gcam 'git commit -a -m '
    abbr --add --global -- gd 'git diff'
    abbr --add --global -- gds 'git difftool'
    abbr --add --global -- gp 'git push'
    abbr --add --global -- gs 'git status'
    # Config Files
    abbr --add --global -- i3config 'nvim /home/nathan/.dotfiles/i3/.config/i3/config'
    abbr --add --global -- nvimconfig 'nvim /home/nathan/.dotfiles/nvim/.config/nvim/init.vim'
    abbr --add --global -- fishabbr 'nvim /home/nathan/.dotfiles/fish/.config/fish/abbr.fish'
    abbr --add --global -- fishconfig 'nvim /home/nathan/.dotfiles/fish/.config/fish/config.fish'
    abbr --add --global -- pcs 'nvim Program.cs'
    abbr --add --global -- sl 'exa --header --long --git'
    # Vim shortcuts and re-abbreviations
    abbr --add --global -- v nvim
    abbr --add --global -- vi nvim
    abbr --add --global -- vim nvim
    abbr --add --global -- g gvim
    abbr --add --global -- gpcs gvim Program.cs
    # Abbreviate dotnet project creation
    abbr --add --global -- dotnew 'dotnet new'
end
