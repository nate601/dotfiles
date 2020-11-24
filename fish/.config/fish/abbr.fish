if status --is-interactive
    abbr --add --global -- :q exit
    abbr --add --global -- :q! exit
    abbr --add --global -- :wq exit
    abbr --add --global -- c clear
    abbr --add --global -- cc /home/nathan/Courses/CourseSelection.fish
    abbr --add --global -- cdc 'cd /home/nathan/Courses/'
    abbr --add --global -- cdd 'cd /home/nathan/Documents'
    abbr --add --global -- cdl 'cd /home/nathan/localWorkspace'
    abbr --add --global -- cdp 'cd /home/nathan/Workspace/expenseTrackerCli'
    abbr --add --global -- cds 'cd /home/nathan'
    abbr --add --global -- cdw 'cd /home/nathan/Workspace'
    abbr --add --global -- dotnew 'dotnet new'
    abbr --add --global -- g gvim
    abbr --add --global -- gca 'git commit -a'
    abbr --add --global -- gcam 'git commit -a -m '
    abbr --add --global -- gd 'git difftool'
    abbr --add --global -- gp 'git push'
    abbr --add --global -- i3config 'nvim /home/nathan/.dotfiles/i3/.config/i3/config'
    abbr --add --global -- l ls
    abbr --add --global -- lg lazygit
    abbr --add --global -- nvimconfig 'nvim /home/nathan/.dotfiles/nvim/.config/nivm/init.vim'
    abbr --add --global -- pbb 'pb push'
    abbr --add --global -- pbf 'pb push --file'
    abbr --add --global -- pcs 'nvim Program.cs'
    abbr --add --global -- sl 'exa --header --long --git'
    abbr --add --global -- v nvim
    abbr --add --global -- vi nvim
    abbr --add --global -- vim nvim
    abbr --add --global -- .. cd ..
end
