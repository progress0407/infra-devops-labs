docker build -f MySQLDockerfile -t custom-mysql-img . && \
docker run -d --name custom-mysql-app -p 13306:3306 custom-mysql-img && \
docker exec -it custom-mysql bash