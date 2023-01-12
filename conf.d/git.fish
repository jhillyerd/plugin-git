function _git_init --on-event fish_prompt
  __git.init
end

function _git_update --on-event git_update
  __git.reset
end

function _git_uninstall --on-event git_uninstall
  __git.destroy
end
