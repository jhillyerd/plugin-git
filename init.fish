# omf initialization.
# $path is only defined for oh-my-fish. home-manager activates this plugin by
# adding the full path of functions/ to fish_function_path, and then sourcing
# init.fish, so let's skip sourcing __git.init.fish before calling __git.init.
set -l __git_init_path "$path/functions/__git.init.fish"
if [ -f "$__git_init_path" ];
    source "$__git_init_path"
end
__git.init
