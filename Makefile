.PHONY: develop stop

develop:
	docker-compose -f docker-compose.yml -f docker-compose.development.yml up -d

stop:
	docker-compose down
