function __git.delete_branches -d "Delete multiple branches"
  argparse f/force -- $argv

  if set -ql _flag_force
    set -f delete_flag -D
  else
    set -f delete_flag -d
  end
  for branch in $argv
    git branch $delete_flag $branch
  end
end
