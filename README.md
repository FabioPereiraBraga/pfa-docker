# Após realizar o clone dos arquivos, seguir os seguintes passos.

### Todos os comandos são executados na raiz

# Create Network

docker network create -d bridge pfa-docker

# Container MYSQL

docker run --name pfa-mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=full_cycle --network pfa-docker -d mysql:5.7.34


# Container Aplicação

**Esse container depende do container do mysql**

docker run -d --name pfa_app --network pfa-docker fabiobraga/pfa-app:1.0.5

# Container nginx

docker run --name pfa_nginx --network pfa-docker  -p 8080:80  -d  fabiobraga/pfa-nging:0.0.4

# Acessar a aplicação

http://127.0.0.1:8080
# Docker Hub Image

https://hub.docker.com/repository/docker/fabiobraga/pfa-app