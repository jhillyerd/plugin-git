function __git.default_branch -d "Fallback to main when master branch is not found"
  command git rev-parse --git-dir &>/dev/null; or return
  if set -l default_branch (command git config --get init.defaultBranch)
    and command git show-ref -q --verify refs/heads/{$default_branch}
    echo $default_branch
  else if command git show-ref -q --verify refs/heads/master
    echo master
  else
    echo main
  end
end
