user_fred_qa:
  user.present:
    - name: fred.jones.qa
    - fullname: Fred Jones QA
    - shell: /bin/zsh
    - home: /home/fred.jones.qa
    - groups:
      - wheel


fred_ssh_key_qa:
  ssh_auth.present:
    - name: fred.jones.qa
    - user: fred.jones.qa
    - source: salt://users/keys/fred.jones_ssh.pub


