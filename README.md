# Projecto Final del módulo 4

Para ejecutar la aplicación, haga primero lo siguiente:

1. Ejecute el servidor de MySQL como un contenedor de docker:
```bash
docker run --name mysql -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root --restart unless-stopped -v mysql:/var/lib/mysql mysql:8 
```
2. Ejecute el servidor de redis como un contenedor de docker:
```bash
docker run -d --name redis-stack -p 6379:6379 -p 8001:8001 redis/redis-stack:latest 
```
3. Carge los datos en MySQL desde el archivo `dump-hibernate-final.sql`. Se recomienda el siguiente método:
- Obtener el ID del contenedor de MySQL:
```bash
docker ps
```
- Copia el archivo `dump-hibernate-final.sql` desde la maquina hacia el contenedor de MySQL:
```bash
docker cp dump-hibernate-final.sql <ID_contenedor>:/tmp/
```
    
- Ejecuar el siguiente comando para conectarse al contenedor de MySQL:
```bash
docker exec -it <ID_contenedor> bash
```

- Ejecutar el siguiente comando para conectarse a MySQL:
```bash
mysql -u root -p
```

- password: secret <ENTER>

- Ejecutar el siguiente comando para crear la base de datos:
```bash
source /tmp/dump-hibernate-final.sql
```

- Ejecutar los siguientes comandos para verificar que la base de datos fue creada:
```bash
use world;
```
```bash
select * from city;
```

- Salir de MySQL:
```bash
exit;
```

- Salir del contenedor:
```bash
exit
```

4. Ejecute el siguiente script para correr la aplicación:
```bash
./executeApplication.sh
```
