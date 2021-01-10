---
ghost_docker_image: ghost:3-alpine
ghost_url: http://ghost.dev.simonmerrick.com
ghost_db_client: mysql
ghost_db_host: db
ghost_db_user: root
ghost_db_database: ghost
ghost_db_password: example