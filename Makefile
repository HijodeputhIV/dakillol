.PHONY: containers-up
containers-up:
	@sudo docker-compose --file docker/docker-compose.yml --env-file ./.env up -d

.PHONY: containers-down containers-clean
containers-down:
	@sudo docker-compose --file docker/docker-compose.yml --env-file ./.env down
containers-clear: containers-down
	@sudo docker system prune -a

.PHONY: containers-list
containers-list:
	@sudo docker ps

.PHONY: composer-install
composer-install:
	@sudo docker-compose exec php-fpm composer install --ignore-platform-reqs
