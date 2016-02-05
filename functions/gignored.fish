function gignored -d "list temporarily ignored files"
  git ls-files -v | grep "^[[:lower:]]" $argv
end
