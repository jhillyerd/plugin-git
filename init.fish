# git initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

set -q __git_plugin_initialized; and exit 0

set -U __git_plugin_abbreviations

function __git.plugin_abbr -d "Create Git plugin abbreviation"
  set -l name $argv[1]
  set -l body $argv[2..-1]
  abbr -a $name $body
  set __git_plugin_abbreviations $__git_plugin_abbreviations $name
end

# git abbreviations
__git.plugin_abbr g          git
__git.plugin_abbr ga         git add
__git.plugin_abbr gaa        git add --all
__git.plugin_abbr gapa       git add --patch
__git.plugin_abbr gba        git branch -a -v
__git.plugin_abbr gban       git branch -a -v --no-merged
__git.plugin_abbr gb         git branch -vv
__git.plugin_abbr gbs        git bisect
__git.plugin_abbr gbsb       git bisect bad
__git.plugin_abbr gbsg       git bisect good
__git.plugin_abbr gbsr       git bisect reset
__git.plugin_abbr gbss       git bisect start
__git.plugin_abbr gc         git commit -v
__git.plugin_abbr gc!        git commit -v --amend
__git.plugin_abbr gcn!       git commit -v --no-edit --amend
__git.plugin_abbr gca        git commit -v -a
__git.plugin_abbr gca!       git commit -v -a --amend
__git.plugin_abbr gcan!      git commit -v -a --no-edit --amend
__git.plugin_abbr gcv        git commit -v --no-verify
__git.plugin_abbr gcav       git commit -a -v --no-verify
__git.plugin_abbr gcav!      git commit -a -v --no-verify --amend
__git.plugin_abbr gcm        git commit -m
__git.plugin_abbr gcam       git commit -a -m
__git.plugin_abbr gscam      git commit -S -a -m
__git.plugin_abbr gcl        git clone
__git.plugin_abbr gcount     git shortlog -sn
__git.plugin_abbr gcp        git cherry-pick
__git.plugin_abbr gd         git diff
__git.plugin_abbr gdca       git diff --cached
__git.plugin_abbr gds        git diff --stat
__git.plugin_abbr gdsc       git diff --stat --cached
__git.plugin_abbr gignore    git update-index --assume-unchanged
__git.plugin_abbr gf         git fetch
__git.plugin_abbr gfa        git fetch --all --prune
__git.plugin_abbr gfm        "git fetch origin master --prune; and git merge FETCH_HEAD"
__git.plugin_abbr gfo        git fetch origin
__git.plugin_abbr gl         git pull
__git.plugin_abbr glr        git pull --rebase
__git.plugin_abbr glg        git log --stat --max-count=10
__git.plugin_abbr glgg       git log --graph --max-count=10
__git.plugin_abbr glgga      git log --graph --decorate --all
__git.plugin_abbr glo        git log --oneline --decorate --color
__git.plugin_abbr glog       git log --oneline --decorate --color --graph
__git.plugin_abbr glom       git log --oneline --decorate --color master..
__git.plugin_abbr glod       git log --oneline --decorate --color develop..
__git.plugin_abbr gloo       "git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short"
__git.plugin_abbr gm         git merge
__git.plugin_abbr gmt        git mergetool --no-prompt
__git.plugin_abbr gp         git push
__git.plugin_abbr gp!        git push --force-with-lease
__git.plugin_abbr gpv        git push --no-verify
__git.plugin_abbr gpv!       git push --no-verify --force-with-lease
__git.plugin_abbr gr         git remote -vv
__git.plugin_abbr grb        git rebase
__git.plugin_abbr grba       git rebase --abort
__git.plugin_abbr grbc       git rebase --continue
__git.plugin_abbr grbi       git rebase --interactive
__git.plugin_abbr grbm       git rebase master
__git.plugin_abbr grbmi      git rebase master --interactive
__git.plugin_abbr grbmia     git rebase master --interactive --autosquash
__git.plugin_abbr grbd       git rebase develop
__git.plugin_abbr grbdi      git rebase master --interactive
__git.plugin_abbr grbdia     git rebase master --interactive --autosquash
__git.plugin_abbr grbs       git rebase --skip
__git.plugin_abbr grh        git reset HEAD
__git.plugin_abbr grhh       git reset HEAD --hard
__git.plugin_abbr grmv       git remote rename
__git.plugin_abbr grrm       git remote remove
__git.plugin_abbr grs        git restore
__git.plugin_abbr grset      git remote set-url
__git.plugin_abbr grss       git restore --source
__git.plugin_abbr grup       git remote update
__git.plugin_abbr grv        git remote -v
__git.plugin_abbr gsh        git show
__git.plugin_abbr gsd        git svn dcommit
__git.plugin_abbr gsr        git svn rebase
__git.plugin_abbr gss        git status -s
__git.plugin_abbr gst        git status
__git.plugin_abbr gsta       git stash
__git.plugin_abbr gstd       git stash drop
__git.plugin_abbr gstp       git stash pop
__git.plugin_abbr gsts       git stash show --text
__git.plugin_abbr gsu        git submodule update
__git.plugin_abbr gsur       git submodule update --recursive
__git.plugin_abbr gsuri      git submodule update --recursive --init
__git.plugin_abbr gsw        git switch
__git.plugin_abbr gswc       git switch --create
__git.plugin_abbr gunignore  git update-index --no-assume-unchanged
__git.plugin_abbr gup        git pull --rebase
__git.plugin_abbr gwch       git whatchanged -p --abbrev-commit --pretty=medium

# git checkout abbreviations
__git.plugin_abbr gco        git checkout
__git.plugin_abbr gcb        git checkout -b
__git.plugin_abbr gcod       git checkout develop
__git.plugin_abbr gcom       git checkout master

# git flow abbreviations
__git.plugin_abbr gfb        git flow bugfix
__git.plugin_abbr gff        git flow feature
__git.plugin_abbr gfr        git flow release
__git.plugin_abbr gfh        git flow hotfix
__git.plugin_abbr gfs        git flow support

__git.plugin_abbr gfbs       git flow bugfix start
__git.plugin_abbr gffs       git flow feature start
__git.plugin_abbr gfrs       git flow release start
__git.plugin_abbr gfhs       git flow hotfix start
__git.plugin_abbr gfss       git flow support start

__git.plugin_abbr gfbt       git flow bugfix track
__git.plugin_abbr gfft       git flow feature track
__git.plugin_abbr gfrt       git flow release track
__git.plugin_abbr gfht       git flow hotfix track
__git.plugin_abbr gfst       git flow support track

__git.plugin_abbr gfp        git flow publish

# Cleanup declared functions
functions -e __git.plugin_abbr

# Mark git plugin as initialized
set -U __git_plugin_initialized (date)
