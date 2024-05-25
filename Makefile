

build:
	docker compose -f srcs/docker-compose.yml up --build 
down:
	docker compose -f srcs/docker-compose.yml down

delete:
	docker system prune -af

kill: down
	docker system prune -af && docker volume rm srcs_mariadb srcs_wordpress && sudo rm -rf /home/machaiba/data/wordpress/* && sudo rm -rf /home/machaiba/data/mariadb/*