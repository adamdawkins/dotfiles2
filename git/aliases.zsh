alias g='git'
compdef g=git
alias gl='git pull --prune'
compdef _git gl=git-pull
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
compdef _git gl=git-log
alias gp='git push origin HEAD'
compdef _git gp=git-push
# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'
compdef _git gd=git-diff

alias ga='git add'
compdef _git ga=git-add
alias gb='git branch'
compdef _git gb=git-branch
alias gc='git commit'
compdef _git gc=git-commit
alias gca='git commit -a'
compdef _git gca=git-commit
alias gco='git checkout'
compdef _git gco=git-checkout
alias grh="git reset HEAD"
compdef _git gco=git-reset
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
compdef _git gs=git-status
alias s='gs'
compdef _git s=git-status

# git flow
alias feature='git flow feature'
alias release='git flow release'
alias hotfix='git flow hotfix'

alias theytookthelotmate='git push -u origin --all --follow-tags'

function git-remote-merged () {
  for branch in `git branch -r --merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
}

function git-remote-not-merged () {
  for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
}
