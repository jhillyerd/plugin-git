# Work In Progress (wip)
# These features allow to pause a branch development and switch to another one (wip)
# When you want to go back to work, just unwip it
#
# these alias commit and uncomit wip branches
function gwip
  git add -A; git ls-files --deleted -z | xargs -r0 git rm; git commit -m "--wip--"
end
