alias g='git'
alias gl='git pull --prune'
# alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s' --abbrev-commit"
alias gp='git push origin HEAD'
# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias grh="git reset HEAD"
alias gclean='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias s='gs'
alias tags='git tag -l | sort -V'
alias nobble='git push --force-with-lease'

# git flow
alias feature='git flow feature'
alias release='git flow release'
alias hotfix='git flow hotfix'

alias theytookthelotmate='git push -u origin --all --follow-tags'

alias prlist='gh pr list -S "status:success draft:false"'

function git-remote-merged () {
  for branch in `git branch -r --merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
}

function git-remote-not-merged () {
  for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
}
