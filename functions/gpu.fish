function gpu -d "git push --set-upstream origin <current branch>"
  git push --set-upstream origin (__git.current_branch) $argv
end
