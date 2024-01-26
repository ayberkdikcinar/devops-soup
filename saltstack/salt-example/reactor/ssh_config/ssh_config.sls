enforce_salt_config:
  local.state.appy:
  - tgt: {{data['data']['id']}}
  - args:
    - sshd