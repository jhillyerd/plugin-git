function gbda -d "Delete all branches merged in current HEAD"
  git branch --merged | \
    command grep -vE  '^\*|^\s*(master|main|develop)\s*$' | \
    command xargs -n 1 git branch -d
end
