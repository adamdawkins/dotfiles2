alias g='git'
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias ga='git add'
alias gac='git add -A && git commit -m'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit -a'
alias gcb='git copy-branch-name'
alias gco='git checkout'
alias ge='git-edit-new'
alias grh="git reset HEAD"
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias s='gs'

alias theytookthelotmate='git push -u origin --all --follow-tags'
