

build:
	docker compose -f srcs/docker-compose.yml up --build 
down:
	docker compose -f srcs/docker-compose.yml down

delete:
	docker system prune -af

kill:
	docker system prune -af && docker volume rm $(docker volume ls | awk {'print $2'} | grep -v VOLUME) && sudo rm -rf /home/machaiba/data/wordpress/* && sudo rm -rf /home/machaiba/data/mariadb/*
