install_nginx_qa:
  pkg.installed:
    - pkgs:
      - nginx

index_html_qa:
  file.managed:
    - name: /usr/share/nginx/html/index.html
    - user: nginx
    - group: nginx
    - mode: 644  
    - source: salt://nginx/templates/index.html

nginx_service_qa:
  service.running:
    - name: nginx
    - enable: True