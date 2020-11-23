if status --is-interactive
    abbr --add --global -- :q exit
    abbr --add --global -- :q! exit
    abbr --add --global -- :wq exit
    abbr --add --global -- c clear
    abbr --add --global -- cc /home/nate601/Courses/CourseSelection.fish
    abbr --add --global -- cdc 'cd /home/nate601/Courses/'
    abbr --add --global -- cdd 'cd /home/nate601/Documents'
    abbr --add --global -- cdl 'cd /home/nate601/localWorkspace'
    abbr --add --global -- cdp 'cd /home/nate601/Workspace/expenseTrackerCli'
    abbr --add --global -- cds 'cd /home/nate601'
    abbr --add --global -- cdw 'cd /home/nate601/Workspace'
    abbr --add --global -- dotnew 'dotnet new'
    abbr --add --global -- fishconfig 'nvim /home/nate601/.config/fish/config.fish'
    abbr --add --global -- g gvim
    abbr --add --global -- gca 'git commit -a'
    abbr --add --global -- gcam 'git commit -a -m '
    abbr --add --global -- gd 'git difftool'
    abbr --add --global -- gp 'git push'
    abbr --add --global -- i3config 'nvim /home/nate601/.i3/config'
    abbr --add --global -- l ls
    abbr --add --global -- lg lazygit
    abbr --add --global -- nvimconfig 'nvim /home/nate601/.config/nvim/init.vim'
    abbr --add --global -- pbb 'pb push'
    abbr --add --global -- pbf 'pb push --file'
    abbr --add --global -- pcs 'nvim Program.cs'
    abbr --add --global -- sl 'exa --header --long --git'
    abbr --add --global -- v nvim
    abbr --add --global -- vi nvim
    abbr --add --global -- vim nvim
end
