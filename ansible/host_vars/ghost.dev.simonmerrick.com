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

nginx_config_dir: /var/nginx/conf.d
nginx_docker_image: nginx:alpine
