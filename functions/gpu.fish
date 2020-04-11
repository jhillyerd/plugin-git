function gpu -w "git push --set-upstream origin master" \
             -d "git push --set-upstream origin <current branch>"
  git push --set-upstream origin (__git.current_branch) $argv
end
