# Que es volumen

# Contenedor de MySQL

# Listar volumenes
docker volume ls

# Volumenes administrados /var/lib/mysql WSL
docker volume create mysqlvolume

docker container run --name MySQLDB \
-e MYSQL_ROOT_PASSWORD=1 \
-v mysqlvolume:/var/lib/mysql
-p 3310:3306
-d mysql

# Bind Volumes
docker container run --name MySQLDB \
-e MYSQL_ROOT_PASSWORD=1 \
-v ./data:/var/lib/mysql \
-p 3310:3306 \
-d mysql