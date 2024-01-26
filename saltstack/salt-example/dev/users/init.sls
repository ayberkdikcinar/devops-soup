{%for user,data in pillar.get('admin_users',{}).items()%}
user_{{user}}:
  user.present:
    - name: {{data['name']}}
    - fullname: {{data['fullname']}}
    - shell: {{data['shell']}}
    - home: {{data['home']}}
    - groups: {{data['groups']}}
user_{{user}}_key:
  ssh_auth.present:
    - name: {{data['ssh_key']}}
    - user: {{data['name']}} 
{%endfor%}


