.PHONY: up stop setup site-install in clean


up:
	docker-compose up -d --remove-orphans

stop: 
	docker-compose stopi

setup:
	docker-compose exec web composer install

site-install:
	docker-compose exec web vendor/bin/run drupal:site-install

in:
	docker-compose exec web bash

clean:
	docker-compose stop && docker-compose rm
