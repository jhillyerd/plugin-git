# gtest: test a command against git staged changes.
#
# example usage:
#   gtest make test
function gtest -d "test command on staged changes only"
  # Stash working dir, keeping index changes.
  git stash push -q --keep-index --include-untracked; or return

  # Run test command and cleanup any trackable output.
  command $argv
  set cmdstatus $status

  # Return working dir and index to original state.
  # Note: reset + restore is required to prevent merge conflicts
  # when popping the stash.
  git reset
  git restore .
  git stash pop -q --index; or return $status

  return $cmdstatus
end
