include:
  - flask

create_app:
  file.managed:
    - name: /app/flask_app/app.py
    - source: salt://app/templates/app.py
    - user: root
    - group: root
    - mode: 755


create_supervisor_config:
  file.managed:
    - name: /app/flask_app/supervisor.conf
    - source: salt://app/templates/supervisor.conf
    - user: root
    - group: root
    - mode: 755

run_app:
  supervisord.running:
    - name: flask_app
    - user: root
    - conf_file: /app/flask_app/supervisor.conf
    - watch:
        - file: /app/flask_app/app.py
        - file: /app/flask_app/supervisor.conf


