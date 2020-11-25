set -l git
set -l install_event (echo $event_name_base)_install
set -l update_event (echo $event_name_base)_update
set -l uninstall_event (echo $event_name_base)_uninstall

__git.init

function $install_event --on-event $install_event
  __git.init
end

function $update_event --on-event $update_event
  __git.reset
end

function $uninstall_event --on-event $uninstall_event
  __git.destroy
end
