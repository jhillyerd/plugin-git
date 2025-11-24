function __git.develop_branch -d "Use dev if it exists. Falls back to develop"
  command git rev-parse --git-dir &>/dev/null; or return
  if command git show-ref -q --verify refs/heads/dev
    echo dev
  else
    echo develop
  end
end
