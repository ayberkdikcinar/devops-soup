include: 
  - supervisor

install_flask_pip:
  pip.installed:
    - pkgs:
      - flask
    - bin_env: '/usr/bin/pip3'

create_app_dir:
  file.directory:
    - name: /app
    - user: root
    - group: root
    - mode: 777

create_flask_app_dir:
  file.directory:
    - name: /app/flask_app
    - user: root
    - group: root
    - mode: 777
    - require:
        - file: create_app_dir
