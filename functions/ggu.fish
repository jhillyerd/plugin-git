function ggu -d "Rebase the current branch on top of the upstream branch after fetching"
  git pull --rebase origin (__git.current_branch)
end
