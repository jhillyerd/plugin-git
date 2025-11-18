function __git.gbda.delete_branches -d "Delete multiple branches"
  argparse f/force v/verbose -- $argv

  if set -ql _flag_force
    set -f delete_flag -D
  else
    set -f delete_flag -d
  end
  for branch in $argv
    if set -ql _flag_verbose
      echo "$branch"
    end
    git branch $delete_flag $branch
  end
end
