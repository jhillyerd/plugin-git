function __git.plugin_abbr -d "Create Git plugin abbreviation"
  set -l name $argv[1]
  set -l body $argv[2..-1]
  abbr -a $name $body
  set __git_plugin_abbreviations $__git_plugin_abbreviations $name
end
