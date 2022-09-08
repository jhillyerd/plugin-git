function __git.fzf_branches -d "Output lsit of git's branches"
  git branch --all --format='%(refname:short)' | fzf
end
