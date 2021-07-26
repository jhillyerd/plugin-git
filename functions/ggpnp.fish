function ggpnp -d "git pull & push origin <current branch>"
  set -l current_branch (__git.current_branch)
  and git pull origin $current_branch
  and git push origin $current_branch
end
