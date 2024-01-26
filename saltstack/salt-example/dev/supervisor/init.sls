python_deps:
  pkg.installed:
    - pkgs:
      - python3-setuptools
      - python3-pip
    - upgrade: True


supervisord_install_pip:
  pip.installed:
    - name: supervisor
    - bin_env: '/usr/bin/pip3'
    - require:
      - pkg: python_deps