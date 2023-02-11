# Remove legacy hooks to prevent errors when upgrading.
# This can be removed when we cleanup other universal abbr code.
functions -e _git_install _git_update _git_uninstall

# fisher initialization, protected as omf also tries to run it.
if test -f $__fish_config_dir/functions/__git.init.fish
  source $__fish_config_dir/functions/__git.init.fish
  __git.init
end
