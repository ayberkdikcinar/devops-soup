user_fred:
  user.present:
    - name: fred.jones
    - fullname: Fred Jones DEV
    - shell: /bin/zsh
    - home: /home/fred.jones
    - groups:
      - wheel


fred_ssh_key:
  ssh_auth.present:
    - name: fred.jones
    - user: fred.jones
    - source: salt://users/keys/fred.jones_ssh.pub


