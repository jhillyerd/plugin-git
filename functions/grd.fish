function grd -d "Print repository directory" 
  set -l repoDir (git rev-parse --show-prefix)
  test -n "$repoDir"; and echo "/$repoDir"; or echo "/"
end
