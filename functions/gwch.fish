function gwch -d "git what changed"
  git whatchanged -p --abbrev-commit --pretty=medium $argv
end
