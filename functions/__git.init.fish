function __git.init
  function __git.create_abbr -d "Create Git plugin abbreviation"
    set -l name $argv[1]
    set -l body $argv[2..-1]
    abbr -a $name $body
    set -a __git_plugin_abbreviations $name
  end

  set -q __git_plugin_initialized; and return 0

  set -U __git_plugin_abbreviations

  # git abbreviations
  __git.create_abbr g          git
  __git.create_abbr ga         git add
  __git.create_abbr gaa        git add --all
  __git.create_abbr gau        git add --update
  __git.create_abbr gapa       git add --patch
  __git.create_abbr gap        git apply
  __git.create_abbr gb         git branch -vv
  __git.create_abbr gba        git branch -a -v
  __git.create_abbr gban       git branch -a -v --no-merged
  __git.create_abbr gbd        git branch -d
  __git.create_abbr gbD        git branch -D
  __git.create_abbr gbl        git blame -b -w
  __git.create_abbr gbs        git bisect
  __git.create_abbr gbsb       git bisect bad
  __git.create_abbr gbsg       git bisect good
  __git.create_abbr gbsr       git bisect reset
  __git.create_abbr gbss       git bisect start
  __git.create_abbr gc         git commit -v
  __git.create_abbr gc!        git commit -v --amend
  __git.create_abbr gcn!       git commit -v --no-edit --amend
  __git.create_abbr gca        git commit -v -a
  __git.create_abbr gca!       git commit -v -a --amend
  __git.create_abbr gcan!      git commit -v -a --no-edit --amend
  __git.create_abbr gcv        git commit -v --no-verify
  __git.create_abbr gcav       git commit -a -v --no-verify
  __git.create_abbr gcav!      git commit -a -v --no-verify --amend
  __git.create_abbr gcm        git commit -m
  __git.create_abbr gcam       git commit -a -m
  __git.create_abbr gscam      git commit -S -a -m
  __git.create_abbr gcfx       git commit --fixup
  __git.create_abbr gcf        git config --list
  __git.create_abbr gcl        git clone
  __git.create_abbr gclean     git clean -di
  __git.create_abbr gclean!    git clean -dfx
  __git.create_abbr gclean!!   "git reset --hard; and git clean -dfx"
  __git.create_abbr gcount     git shortlog -sn
  __git.create_abbr gcp        git cherry-pick
  __git.create_abbr gcpa       git cherry-pick --abort
  __git.create_abbr gcpc       git cherry-pick --continue
  __git.create_abbr gd         git diff
  __git.create_abbr gdca       git diff --cached
  __git.create_abbr gds        git diff --stat
  __git.create_abbr gdsc       git diff --stat --cached
  __git.create_abbr gdw        git diff --word-diff
  __git.create_abbr gdwc       git diff --word-diff --cached
  __git.create_abbr gdto       git difftool
  __git.create_abbr gignore    git update-index --assume-unchanged
  __git.create_abbr gf         git fetch
  __git.create_abbr gfa        git fetch --all --prune
  __git.create_abbr gfm        "git fetch origin (__git.default_branch) --prune; and git merge FETCH_HEAD"
  __git.create_abbr gfo        git fetch origin
  __git.create_abbr gl         git pull
  __git.create_abbr gll        git pull origin
  __git.create_abbr glr        git pull --rebase
  __git.create_abbr glg        git log --stat
  __git.create_abbr glgg       git log --graph
  __git.create_abbr glgga      git log --graph --decorate --all
  __git.create_abbr glo        git log --oneline --decorate --color
  __git.create_abbr glog       git log --oneline --decorate --color --graph
  __git.create_abbr gloga      git log --oneline --decorate --color --graph --all
  __git.create_abbr glom       git log --oneline --decorate --color \(__git.default_branch\)..
  __git.create_abbr glod       git log --oneline --decorate --color develop..
  __git.create_abbr gloo       "git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short"
  __git.create_abbr gm         git merge
  __git.create_abbr gmt        git mergetool --no-prompt
  __git.create_abbr gmom       git merge origin/\(__git.default_branch\)
  __git.create_abbr gp         git push
  __git.create_abbr gp!        git push --force-with-lease
  __git.create_abbr gpo        git push origin
  __git.create_abbr gpo!       git push --force-with-lease origin
  __git.create_abbr gpv        git push --no-verify
  __git.create_abbr gpv!       git push --no-verify --force-with-lease
  __git.create_abbr ggp!       ggp --force-with-lease
  __git.create_abbr gpu        ggp --set-upstream
  __git.create_abbr gr         git remote -vv
  __git.create_abbr gra        git remote add
  __git.create_abbr grb        git rebase
  __git.create_abbr grba       git rebase --abort
  __git.create_abbr grbc       git rebase --continue
  __git.create_abbr grbi       git rebase --interactive
  __git.create_abbr grbm       git rebase \(__git.default_branch\)
  __git.create_abbr grbmi      git rebase \(__git.default_branch\) --interactive
  __git.create_abbr grbmia     git rebase \(__git.default_branch\) --interactive --autosquash
  __git.create_abbr grbd       git rebase develop
  __git.create_abbr grbdi      git rebase develop --interactive
  __git.create_abbr grbdia     git rebase develop --interactive --autosquash
  __git.create_abbr grbs       git rebase --skip
  __git.create_abbr grev       git revert
  __git.create_abbr grh        git reset
  __git.create_abbr grhh       git reset --hard
  __git.create_abbr grhpa      git reset --patch
  __git.create_abbr grm        git rm
  __git.create_abbr grmc       git rm --cached
  __git.create_abbr grmv       git remote rename
  __git.create_abbr grpo       git remote prune origin
  __git.create_abbr grrm       git remote remove
  __git.create_abbr grs        git restore
  __git.create_abbr grset      git remote set-url
  __git.create_abbr grss       git restore --source
  __git.create_abbr grst       git restore --staged
  __git.create_abbr grup       git remote update
  __git.create_abbr grv        git remote -v
  __git.create_abbr gsh        git show
  __git.create_abbr gsd        git svn dcommit
  __git.create_abbr gsr        git svn rebase
  __git.create_abbr gss        git status -s
  __git.create_abbr gst        git status
  __git.create_abbr gsta       git stash
  __git.create_abbr gstd       git stash drop
  __git.create_abbr gstl       git stash list
  __git.create_abbr gstp       git stash pop
  __git.create_abbr gsts       git stash show --text
  __git.create_abbr gsu        git submodule update
  __git.create_abbr gsur       git submodule update --recursive
  __git.create_abbr gsuri      git submodule update --recursive --init
  __git.create_abbr gts        git tag -s
  __git.create_abbr gtv        git tag | sort -V
  __git.create_abbr gsw        git switch
  __git.create_abbr gswc       git switch --create
  __git.create_abbr gunignore  git update-index --no-assume-unchanged
  __git.create_abbr gup        git pull --rebase
  __git.create_abbr gupv       git pull --rebase -v
  __git.create_abbr gupa       git pull --rebase --autostash
  __git.create_abbr gupav      git pull --rebase --autostash -v
  __git.create_abbr gwch       git whatchanged -p --abbrev-commit --pretty=medium

  # git checkout abbreviations
  __git.create_abbr gco        git checkout
  __git.create_abbr gcb        git checkout -b
  __git.create_abbr gcod       git checkout develop
  __git.create_abbr gcom       git checkout \(__git.default_branch\)

  # git flow abbreviations
  __git.create_abbr gfb        git flow bugfix
  __git.create_abbr gff        git flow feature
  __git.create_abbr gfr        git flow release
  __git.create_abbr gfh        git flow hotfix
  __git.create_abbr gfs        git flow support

  __git.create_abbr gfbs       git flow bugfix start
  __git.create_abbr gffs       git flow feature start
  __git.create_abbr gfrs       git flow release start
  __git.create_abbr gfhs       git flow hotfix start
  __git.create_abbr gfss       git flow support start

  __git.create_abbr gfbt       git flow bugfix track
  __git.create_abbr gfft       git flow feature track
  __git.create_abbr gfrt       git flow release track
  __git.create_abbr gfht       git flow hotfix track
  __git.create_abbr gfst       git flow support track

  __git.create_abbr gfp        git flow publish

  # git worktree abbreviations
  __git.create_abbr gwt        git worktree
  __git.create_abbr gwta       git worktree add
  __git.create_abbr gwtls      git worktree list
  __git.create_abbr gwtlo      git worktree lock
  __git.create_abbr gwtmv      git worktree move
  __git.create_abbr gwtpr      git worktree prune
  __git.create_abbr gwtrm      git worktree remove
  __git.create_abbr gwtulo     git worktree unlock

  # Cleanup declared functions
  functions -e __git.create_abbr

  # Mark git plugin as initialized
  set -U __git_plugin_initialized (date)
end
