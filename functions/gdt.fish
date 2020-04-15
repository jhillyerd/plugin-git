function gdt -w "git diff" -d "List changed files"
  git diff-tree --no-commit-id --name-only -r $argv
end
