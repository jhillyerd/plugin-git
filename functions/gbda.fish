function gbda -d "Delete all branches merged in current HEAD, including squashed"
  argparse g/gone -- $argv

  set -l default_branch (__git.default_branch)

  if set -ql _flag_gone
    __git.delete_branches --force (
      git for-each-ref refs/heads/ --format="%(refname:short) %(upstream:track)" refs/heads/ | \
        command awk '$2 == "[gone]" { print $1 }'
    )
  end

  __git.delete_branches (
    git branch --merged | \
      # *: current branch, +: current branch on worktree.
      command grep -vE '^\*|^\+|^\s*(master|main|develop)\s*$' | \
      string trim
  )

  git for-each-ref refs/heads/ "--format=%(refname:short)" | \
    while read branch
      set -l merge_base (git merge-base $default_branch $branch)
      if string match -q -- '-*' (git cherry $default_branch (git commit-tree (git rev-parse $branch\^{tree}) -p $merge_base -m _))
        __git.delete_branches --force $branch
      end
    end
end
