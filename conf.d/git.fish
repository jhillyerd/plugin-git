function _git_install --on-event git_install
  __git.init
end

function _git_update --on-event git_update
  __git.reset
end

function _git_uninstall --on-event git_uninstall
  __git.destroy
end
