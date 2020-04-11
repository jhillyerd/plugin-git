function gclean -w "git clean -dfx" -d "Pristine git working directory: reset and force clean"
  git reset --hard; and git clean -dfx $argv
end
