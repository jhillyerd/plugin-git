function gdv -d "Pipe git diff to `view` command"
  git diff -w $argv | view -
end
