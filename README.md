# Create Network

docker network create -d bridge pfa-docker

# Container MYSQL

docker run --name pfa-mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=full_cycle --network pfa-docker  -v $(pwd)/mysql/data:/var/lib/mysql -d mysql:5.7.34


# Container Aplicação

docker run -d --name pfa_app --network pfa-docker fabiobraga/pfa-app:1.0.5

# Container nginx

docker run --name pfa_nginx --network pfa-docker -v $(pwd)/nginx/default.conf:/etc/nginx/conf.d/ -p 8099:80 -d nginx:1.19

# Docker Hub Image

docker run --name pfa_nginx --network pfa-docker  -p 8099:80 -d -v $(pwd)/app-php:/var/www -v $(pwd)/nginx:/etc/nginx/conf.d nginx:1.15.0-alpine