function __git.default_branch -d "Fallback to main when master branch is not found"
  # Silently fail when not in git directory
  command git rev-parse --git-dir &>/dev/null; or return
  command git config --get init.defaultBranch; and return
  if command git show-ref -q --verify refs/heads/master
    echo master
  else
    echo main
  end
end  

