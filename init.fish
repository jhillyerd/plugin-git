function init -a path --on-event init_git
  # git abbreviations
  abbr -a g          git
  abbr -a ga         git add
  abbr -a gaa        git add --all
  abbr -a gapa       git add --patch
  abbr -a gba        git branch -a
  abbr -a gbr        git branch
  abbr -a gc         git commit -v
  abbr -a gc!        git commit -v --amend
  abbr -a gca        git commit -v -a
  abbr -a gca!       git commit -v -a --amend
  abbr -a gcmsg      git commit -m
  abbr -a gco        git checkout
  abbr -a gd         git diff
  abbr -a gdca       git diff --cached
  abbr -a gm         git merge
  abbr -a gr         git remote
  abbr -a grmv       git remote rename
  abbr -a grrm       git remote remove
  abbr -a grset      git remote set-url
  abbr -a grup       git remote update
end

