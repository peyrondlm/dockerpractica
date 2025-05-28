docker container run hello-world <image>

#contenedor es un entorno aislado donde existen todas las dependencias de una aplicacion
#Imagen son uns serie de instrucciones que se ejecutan para levantar el contenedor

#Imagen ---> Class
#contenedor ---> objeto

docker container run -d -p 8088:80 docker/getting-started 

#listar contenedores corriendo
docker container ls -a

#detener un contenedor {no borrarlo}
docker container stop <ID del contenedor> o su nombre

#eliminar un contenedor
docker container rm -fv <id del contenedor o nombre>

#Nombrar un contenedor
docker container run -d --name <nombre> -p 8088:80 docker/getting-started

#crear contenedor de ubuntu
docker container run --name=MaquinaVirtual -d -p ubuntu sleep 3600

#como conectarse a un contenedor 
docker container exec -it <nombre del contenedor> <comando con el que quieres entrar>

#levantar contenedor de gninx
docker container run --name=MiPaginaWeb -d -p 81:80 nginx
docker container exec -it MiPaginaWeb bash

#construir una imagen 
docker build -t test-api:1.0 .

#crear mi propio contenedor
docker container run --name=MiPaginaWeb -d -p 3001:3000 test-api:1.0

#crea una instancia de MYSQL
docker container run --name=Mysql1 -e MYSQL_ROOT_PASSWORD=123456 -d -p 3307:3306 mysql


#Profe
docker container run hello-world <image>

# Contenedor: Un entorno aislado, donde existen todas las dependencias de una aplicacion
# Imagen: Son una serie de instrucciones que se ejecutan para levantar el contenedor.

#Imagen ---> Class
#Contenedor ---> Objeto

docker container run -d -p 8088:80 docker/getting-started

# Listar contenedores corriendo
docker container ls -a

# Detener un contenedor (NO BORRARLO)
docker container stop <ID del contenedor> o su nombre

# Eleiminar un contendor
docker container rm -fv <ID del contnedor o nombre>
npm run dev
# Nombrar un contenedor
docker container run --name=Clase412 -d -p 8089:80 docker/getting-started

# Crear contenedor de Ubuntu
docker container run --name=MaquinaVirtual -d -p ubuntu sleep 3600

# Como conectarse a un contenedor
docker container exec -it <nombre del contendor> <comando con el que quieres entrar>

# Levantar contenedor nginx
docker container run --name=MiPaginaWeb -d -p 81:80 nginx

# Construir una imagen
docker build -t test-api:1.0 .

# Crear mi propio contenedor
docker container run --name=TestAPI -d -p 3001:3000 test-api:1.0

# Crear instancia de MYSQL
docker container run --name=Mysql1 -e MYSQL_ROOT_PASSWORD=123456 -d -p 3307:3306 mysql


# Para publicar
docker push <usuario>/<repo>

# Loguearse a docker hub
docker login -u <su usuario> -p "<su contraseña>"

# Crear imagen
docker build -t juanfr97/node-test:1.0 .