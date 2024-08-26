docker run -dp 3307:3306 --name world-db -e MARIADB_USER=example-user -e MARIADB_PASSWORD=user-password -e MARIADB_ROOT_PASSWORD=root-secret-password -e MARIADB_DATABASE=world-db --volume world-db:/var/lib/mysql --network world-app mariadb:noble

docker container run --name phpmyadmin -d -e PMA_ARBITRARY=1 -p 8080:80 --network world-app phpmyadmin:5.2.0-apache


docker container run \
--name nest-app \
-w /app \
-p 80:3000 \
-v "$(pwd)":/app \
node:18-alpine3.16 \
sh -c "npm install && npm run start:dev"

docker network create postgres-net
docker container run \
-d \
--name postgres-db \
-e POSTGRES_PASSWORD=123456 \
-v postgres-db:/PATH/DE/LA/BASE/DE/DATOS \
--network postgres-net \
postgres:15.1

docker container run \
--name pgAdmin \
-e PGADMIN_DEFAULT_PASSWORD=123456 \
-e PGADMIN_DEFAULT_EMAIL=superman@google.com \
-dp 8080:80 \
--network postgres-net \
dpage/pgadmin4:6.17