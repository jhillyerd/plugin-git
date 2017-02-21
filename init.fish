function init -a path --on-event init_git
  #
  # git abbreviations
  #

  # Git
  abbr -a g git

  # Branch (b)
  abbr -a gb  git branch
  abbr -a gbc git checkout -b
  abbr -a gbl git branch -v
  abbr -a gbL git branch -av
  abbr -a gbx git branch -d
  abbr -a gbX git branch -D
  abbr -a gbm git branch -m
  abbr -a gbM git branch -M
  abbr -a gbs git show-branch
  abbr -a gbS git show-branch -a
  abbr -a gbf git-branch-list

  # Commit (c)
  abbr -a gc  git commit --verbose
  abbr -a gca git commit --verbose --all
  abbr -a gcm git commit --message
  abbr -a gco git checkout
  abbr -a gcO git checkout --patch
  abbr -a gcf git commit --amend --reuse-message HEAD
  abbr -a gcF git commit --verbose --amend
  abbr -a gcp git cherry-pick --ff
  abbr -a gcP git cherry-pick --no-commit
  abbr -a gcr git revert
  abbr -a gcR git reset "HEAD^"
  abbr -a gcs git show
  abbr -a gcl git-commit-lost

  # Conflict (C)
  abbr -a gCl git status | sed -n "s/^.*both [a-z]*ed: *//p"
  abbr -a gCa git add (gCl)
  abbr -a gCe git mergetool (gCl)
  abbr -a gCo git checkout --ours --
  abbr -a gCO gCo (gCl)
  abbr -a gCt git checkout --theirs --
  abbr -a gCT gCt (gCl)

  # Data (d)
  abbr -a gd  git ls-files
  abbr -a gdc git ls-files --cached
  abbr -a gdx git ls-files --deleted
  abbr -a gdm git ls-files --modified
  abbr -a gdu git ls-files --other --exclude-standard
  abbr -a gdk git ls-files --killed
  abbr -a gdi git status --porcelain --short --ignored | sed -n "s/^!! //p"

  # Fetch (f)
  abbr -a gf  git fetch
  abbr -a gfc git clone
  abbr -a gfm git pull
  abbr -a gfr git pull --rebase

  # Grep (g)
  abbr -a gg  git grep
  abbr -a ggi git grep --ignore-case
  abbr -a ggl git grep --files-with-matches
  abbr -a ggL git grep --files-without-match
  abbr -a ggv git grep --invert-match
  abbr -a ggw git grep --word-regexp

  # Index (i)
  abbr -a gia git add
  abbr -a giA git add --patch
  abbr -a giu git add --update
  abbr -a gid git diff --no-ext-diff --cached
  abbr -a giD git diff --no-ext-diff --cached --word-diff
  abbr -a gir git reset
  abbr -a giR git reset --patch
  abbr -a gix git rm -r --cached
  abbr -a giX git rm -rf --cached

  # Log (l)
  abbr -a gl  git log --topo-order --pretty=format:(__git.log_medium_format)
  abbr -a gls git log --topo-order --stat --pretty=format:(__git.log_medium_format)
  abbr -a gld git log --topo-order --stat --patch --full-diff --pretty=format:(__git.log_medium_format)
  abbr -a glo git log --topo-order --pretty=format:(__git.log_oneline_format)
  abbr -a glg git log --topo-order --all --graph --pretty=format:(__git.log_oneline_format)
  abbr -a glb git log --topo-order --pretty=format:(__git.log_brief_format)
  abbr -a glc git shortlog --summary --numbered

  # Merge (m)
  abbr -a gm  git merge
  abbr -a gmC git merge --no-commit
  abbr -a gmF git merge --no-ff
  abbr -a gma git merge --abort
  abbr -a gmt git mergetool

  # Push (p)
  abbr -a gp  git push
  abbr -a gpf git push --force
  abbr -a gpa git push --all
  abbr -a gpA git push --all and git push --tags
  abbr -a gpt git push --tags
  abbr -a gpc git push --set-upstream origin (__git.current_branch)
  abbr -a gpp git pull origin (__git.current_branch); and git push origin (__git.current_branch)

  # Rebase (r)
  abbr -a gr  git rebase
  abbr -a gra git rebase --abort
  abbr -a grc git rebase --continue
  abbr -a gri git rebase --interactive
  abbr -a grs git rebase --skip

  # Remote (R)
  abbr -a gR  git remote
  abbr -a gRl git remote --verbose
  abbr -a gRa git remote add
  abbr -a gRx git remote rm
  abbr -a gRm git remote rename
  abbr -a gRu git remote update
  abbr -a gRp git remote prune
  abbr -a gRs git remote show
  abbr -a gRb git-hub-browse

  # Stash (s)
  abbr -a gs  git stash
  abbr -a gsa git stash apply
  abbr -a gsx git stash drop
  abbr -a gsX git-stash-clear-interactive
  abbr -a gsl git stash list
  abbr -a gsL git-stash-dropped
  abbr -a gsd git stash show --patch --stat
  abbr -a gsp git stash pop
  abbr -a gsr git-stash-recover
  abbr -a gss git stash save --include-untracked
  abbr -a gsS git stash save --patch --no-keep-index
  abbr -a gsw git stash save --include-untracked --keep-index

  # Submodule (S)
  abbr -a gS  git submodule
  abbr -a gSa git submodule add
  abbr -a gSf git submodule foreach
  abbr -a gSi git submodule init
  abbr -a gSI git submodule update --init --recursive
  abbr -a gSl git submodule status
  abbr -a gSm git-submodule-move
  abbr -a gSs git submodule sync
  abbr -a gSu git submodule foreach git pull origin master
  abbr -a gSx git-submodule-remove

  # Working Copy (w)
  abbr -a gws git status --ignore-submodules=(__git.status_ignore_submodules) --short
  abbr -a gwS git status --ignore-submodules=(__git.status_ignore_submodules)
  abbr -a gwd git diff --no-ext-diff
  abbr -a gwD git diff --no-ext-diff --word-diff
  abbr -a gwr git reset --soft
  abbr -a gwR git reset --hard
  abbr -a gwc git clean -n
  abbr -a gwC git clean -f
  abbr -a gwx git rm -r
  abbr -a gwX git rm -rf

end

