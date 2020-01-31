.PHONY: develop develop_build stop

develop:
	docker-compose -f docker-compose.yml -f docker-compose.development.yml up -d

develop_build:
	docker-compose -f docker-compose.yml -f docker-compose.development.yml up --build -d

stop:
	docker-compose -f docker-compose.yml -f docker-compose.development.yml down
