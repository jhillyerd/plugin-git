# git initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

set -q __git_plugin_initialized; and exit 0

set -U __git_plugin_abbreviations

function __git_abbr -d "Create Git plugin abbreviation"
  set -l name $argv[1]
  set -l body $argv[2..-1]
  abbr -a $name $body
  set __git_plugin_abbreviations $__git_plugin_abbreviations $name
end

# git abbreviations
__git_abbr g          git
__git_abbr ga         git add
__git_abbr gaa        git add --all
__git_abbr gapa       git add --patch
__git_abbr gap        git apply
__git_abbr gb         git branch -vv
__git_abbr gba        git branch -a -v
__git_abbr gban       git branch -a -v --no-merged
__git_abbr gbd        git branch -d
__git_abbr gbD        git branch -D
__git_abbr gbl        git blame -b -w
__git_abbr gbs        git bisect
__git_abbr gbsb       git bisect bad
__git_abbr gbsg       git bisect good
__git_abbr gbsr       git bisect reset
__git_abbr gbss       git bisect start
__git_abbr gc         git commit -v
__git_abbr gc!        git commit -v --amend
__git_abbr gcn!       git commit -v --no-edit --amend
__git_abbr gca        git commit -v -a
__git_abbr gca!       git commit -v -a --amend
__git_abbr gcan!      git commit -v -a --no-edit --amend
__git_abbr gcv        git commit -v --no-verify
__git_abbr gcav       git commit -a -v --no-verify
__git_abbr gcav!      git commit -a -v --no-verify --amend
__git_abbr gcm        git commit -m
__git_abbr gcam       git commit -a -m
__git_abbr gscam      git commit -S -a -m
__git_abbr gcfx       git commit --fixup
__git_abbr gcf        git config --list
__git_abbr gcl        git clone
__git_abbr gclean     git clean -di
__git_abbr gclean!    git clean -dfx
__git_abbr gclean!!   "git reset --hard; and git clean -dfx"
__git_abbr gcount     git shortlog -sn
__git_abbr gcp        git cherry-pick
__git_abbr gcpa       git cherry-pick --abort
__git_abbr gcpc       git cherry-pick --continue
__git_abbr gd         git diff
__git_abbr gdca       git diff --cached
__git_abbr gds        git diff --stat
__git_abbr gdsc       git diff --stat --cached
__git_abbr gdw        git diff --word-diff
__git_abbr gdwc       git diff --word-diff --cached
__git_abbr gignore    git update-index --assume-unchanged
__git_abbr gf         git fetch
__git_abbr gfa        git fetch --all --prune
__git_abbr gfm        "git fetch origin master --prune; and git merge FETCH_HEAD"
__git_abbr gfo        git fetch origin
__git_abbr gl         git pull
__git_abbr gll        git pull origin
__git_abbr glr        git pull --rebase
__git_abbr glg        git log --stat --max-count=10
__git_abbr glgg       git log --graph --max-count=10
__git_abbr glgga      git log --graph --decorate --all
__git_abbr glo        git log --oneline --decorate --color
__git_abbr glog       git log --oneline --decorate --color --graph
__git_abbr glom       git log --oneline --decorate --color master..
__git_abbr glod       git log --oneline --decorate --color develop..
__git_abbr gloo       "git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short"
__git_abbr gm         git merge
__git_abbr gmt        git mergetool --no-prompt
__git_abbr gp         git push
__git_abbr gp!        git push --force-with-lease
__git_abbr gpo        git push origin
__git_abbr gpo!       git push --force-with-lease origin
__git_abbr gpv        git push --no-verify
__git_abbr gpv!       git push --no-verify --force-with-lease
__git_abbr ggp!       ggp --force-with-lease
__git_abbr gpu        ggp --set-upstream
__git_abbr gr         git remote -vv
__git_abbr gra        git remote add
__git_abbr grb        git rebase
__git_abbr grba       git rebase --abort
__git_abbr grbc       git rebase --continue
__git_abbr grbi       git rebase --interactive
__git_abbr grbm       git rebase master
__git_abbr grbmi      git rebase master --interactive
__git_abbr grbmia     git rebase master --interactive --autosquash
__git_abbr grbd       git rebase develop
__git_abbr grbdi      git rebase master --interactive
__git_abbr grbdia     git rebase master --interactive --autosquash
__git_abbr grbs       git rebase --skip
__git_abbr grev       git revert
__git_abbr grh        git reset
__git_abbr grhh       git reset --hard
__git_abbr grm        git rm
__git_abbr grmc       git rm --cached
__git_abbr grmv       git remote rename
__git_abbr grrm       git remote remove
__git_abbr grs        git restore
__git_abbr grset      git remote set-url
__git_abbr grss       git restore --source
__git_abbr grup       git remote update
__git_abbr grv        git remote -v
__git_abbr gsh        git show
__git_abbr gsd        git svn dcommit
__git_abbr gsr        git svn rebase
__git_abbr gss        git status -s
__git_abbr gst        git status
__git_abbr gsta       git stash
__git_abbr gstd       git stash drop
__git_abbr gstp       git stash pop
__git_abbr gsts       git stash show --text
__git_abbr gsu        git submodule update
__git_abbr gsur       git submodule update --recursive
__git_abbr gsuri      git submodule update --recursive --init
__git_abbr gts        git tag -s
__git_abbr gtv        git tag | sort -V
__git_abbr gsw        git switch
__git_abbr gswc       git switch --create
__git_abbr gunignore  git update-index --no-assume-unchanged
__git_abbr gup        git pull --rebase
__git_abbr gwch       git whatchanged -p --abbrev-commit --pretty=medium

# git checkout abbreviations
__git_abbr gco        git checkout
__git_abbr gcb        git checkout -b
__git_abbr gcod       git checkout develop
__git_abbr gcom       git checkout master

# git flow abbreviations
__git_abbr gfb        git flow bugfix
__git_abbr gff        git flow feature
__git_abbr gfr        git flow release
__git_abbr gfh        git flow hotfix
__git_abbr gfs        git flow support

__git_abbr gfbs       git flow bugfix start
__git_abbr gffs       git flow feature start
__git_abbr gfrs       git flow release start
__git_abbr gfhs       git flow hotfix start
__git_abbr gfss       git flow support start

__git_abbr gfbt       git flow bugfix track
__git_abbr gfft       git flow feature track
__git_abbr gfrt       git flow release track
__git_abbr gfht       git flow hotfix track
__git_abbr gfst       git flow support track

__git_abbr gfp        git flow publish

# Cleanup declared functions
functions -e __git_abbr

# Mark git plugin as initialized
set -U __git_plugin_initialized (date)
