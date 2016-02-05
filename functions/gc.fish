function gc
  git commit -v $argv
end

function gc!
  git commit -v --amend $argv
end
