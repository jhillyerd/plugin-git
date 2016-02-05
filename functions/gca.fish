function gca
  git commit -v -a $argv
end

function gca!
  git commit -v -a --amend $argv
end
