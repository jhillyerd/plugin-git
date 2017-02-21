function gCl
  git status | sed -n "s/^.*both [a-z]*ed: *//p"
end
