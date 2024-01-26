create_folder:
  file.directory:
    - name: /home/file_created_for_db
    - user: fred.jones
    - group: wheel
    - mode: 777

create_file:
  file.managed:
    - name: /home/file_created_for_db/example_file.txt
    - user: fred.jones
    - group: wheel
    - mode: 777
    - source: salt://postgresql/templates/example_file.txt