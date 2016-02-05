function __git.branch_has_wip -d "Returns 0 if branch has --wip--, otherwise 1"
  if begin git log -n 1 ^/dev/null | grep -qc "\-\-wip\-\-"; end
    return 0
  else
    return 1
  end
end
