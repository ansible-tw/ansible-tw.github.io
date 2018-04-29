OS_NAME := $(shell uname)

.PHONY: main run review clean

main: run

run:
	docker-compose up -d

review:
ifeq (${OS_NAME}, Darwin)
	open http://localhost/
else
	firefox http://localhost/
endif

ps:
	docker-compose ps

clean:
	docker-compose stop web
	docker-compose rm -f web
