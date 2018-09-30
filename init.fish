# git initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

# git abbreviations
abbr -a g          git
abbr -a ga         git add
abbr -a gaa        git add --all
abbr -a gapa       git add --patch
abbr -a gba        git branch -a -v
abbr -a gb         git branch -vv
abbr -a gc         git commit -v
abbr -a gc!        git commit -v --amend
abbr -a gca        git commit -v -a
abbr -a gca!       git commit -v -a --amend
abbr -a gcmsg      git commit -m
abbr -a gcl        git clone
abbr -a gcount     git shortlog -sn
abbr -a gcp        git cherry-pick
abbr -a gd         git diff
abbr -a gdca       git diff --cached
abbr -a gff        git flow feature
abbr -a gfr        git flow release
abbr -a gfh        git flow hotfix
abbr -a gfs        git flow support
abbr -a gignore    git update-index --assume-unchanged
abbr -a gk         gitk --all --branches
abbr -a gf         git fetch
abbr -a gfa        git fetch --all --prune
abbr -a gfo        git fetch origin
abbr -a gl         git pull
abbr -a glg        git log --stat --max-count=10
abbr -a glgg       git log --graph --max-count=10
abbr -a glgga      git log --graph --decorate --all
abbr -a glo        git log --oneline --decorate --color
abbr -a glog       git log --oneline --decorate --color --graph
abbr -a gloo       "git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short"
abbr -a gm         git merge
abbr -a gmt        git mergetool --no-prompt
abbr -a gp         git push
abbr -a gr         git remote -vv
abbr -a grba       git rebase --abort
abbr -a grbc       git rebase --continue
abbr -a grbi       git rebase --interactive
abbr -a grbm       git rebase master
abbr -a grbs       git rebase --skip
abbr -a grh        git reset HEAD
abbr -a grhh       git reset HEAD --hard
abbr -a grmv       git remote rename
abbr -a grrm       git remote remove
abbr -a grset      git remote set-url
abbr -a grup       git remote update
abbr -a grv        git remote -v
abbr -a gsd        git svn dcommit
abbr -a gsr        git svn rebase
abbr -a gss        git status -s
abbr -a gst        git status
abbr -a gsta       git stash
abbr -a gstd       git stash drop
abbr -a gstp       git stash pop
abbr -a gsts       git stash show --text
abbr -a gunignore  git update-index --no-assume-unchanged
abbr -a gup        git pull --rebase
abbr -a gwch       git whatchanged -p --abbrev-commit --pretty=medium

# git checkout abbreviations
abbr -a gco        git checkout
abbr -a gcb        git checkout -b
abbr -a gcod       git checkout develop
abbr -a gcom       git checkout master
