beacons:
  inotify:
    - files:
        /etc/ssh/ssh_config:
          mask:
            - modify
    - disable_during_state_run: True