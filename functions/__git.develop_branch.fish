function __git.develop_branch -d "Use develop if it exists. Falls back to dev"
  command git rev-parse --git-dir &>/dev/null; or return
  if command git show-ref -q --verify refs/heads/develop
    echo develop
  else
    echo dev
  end
end
