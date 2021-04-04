---
ghost_docker_image: ghost:3-alpine
ghost_url: http://ghost.dev.simonmerrick.com

ghost_server_name: ghost.dev.simonmerrick.com
ghost_server_port: 2368
ghost_db_client: mysql
ghost_db_host: db
ghost_db_user: root
ghost_db_database: ghost
ghost_db_password: example

nginx_config_dir: /etc/nginx/conf.d
nginx_docker_image: nginx:alpine

certbot_docker_image: certbot/certbot:latest
certbot_cert_directory: /etc/letsencrypt
certbot_acme_challenge_directory: /var/www/certbot
certbot_email: s.m3rrick@gmail.com

ghost_certificate_path: "{{ certbot_cert_directory }}/live/{{ ghost_server_name }}"
ghost_certificate_fullchain: 