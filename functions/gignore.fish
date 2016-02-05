function gignore -d "alias ignore changes to file"
  git update-index --assume-unchanged $argv
end
