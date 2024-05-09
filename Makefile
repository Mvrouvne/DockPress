

up:
	docker-compose -f srcs/docker-compose.yml up
build:
	docker-compose -f srcs/docker-compose.yml up --build 
down:
	docker-compose -f srcs/docker-compose.yml down
ps:
	docker ps
allps:
	docker ps -a