# gtest: test a command against git staged changes.
#
# example usage:
#   gtest make test
function gtest -d "test command on staged changes only"
  # Commit index changes, stash everything else.
  git commit -q --no-verify -m "WIP: testing index with $cmd"; or return
  git stash push -q --include-untracked; or return

  # Run test command and cleanup any trackable output.
  command $argv
  set cmdstatus $status
  git restore .

  # Return working dir and index to original state.
  git reset -q HEAD^
  git add --all
  git stash pop -q

  return $cmdstatus
end
