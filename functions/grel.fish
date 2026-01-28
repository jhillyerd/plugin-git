function grel -d "Print path relative to repository root" 
  set -l repoDir (git rev-parse --show-prefix)
  test -n "$repoDir"; and echo "/$repoDir"; or echo "/"
end
