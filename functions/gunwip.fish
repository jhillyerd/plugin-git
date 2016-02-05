# Work In Progress (wip)
# These features allow to pause a branch development and switch to another one (wip)
# When you want to go back to work, just unwip it
#
# these alias commit and uncomit wip branches
function gunwip
  git log -n 1 | grep -q -c "\-\-wip\-\-"; and git reset HEAD~1
end
