NodeVersion ?=10.16.0
GoVersion ?=1.12.6

dist/%:
	@echo "Everything you put in dist will be copied to container"
	mkdir dist

.ssh/%:
	@echo "You can copy your \$$HOME/.ssh too"
	mkdir .ssh

build_no_cache: .ssh dist
	echo --go-ver="${GoVersion}" --node-ver="${NodeVersion}"
	docker-compose build --build-arg GOV="${GoVersion}" --build-arg NOV="${NodeVersion}" --no-cache venv 
	docker-compose run -d --entrypoint /root/entrypoint.sh venv
build_all: .ssh dist
	docker-compose up -d
attach:
	docker exec -it $$(docker ps | grep venv| head -n 1 | egrep --only-matching '^[0-9a-f]+') /bin/bash
run: build_no_cache attach

clean:
	docker rm -f $$(docker ps -a -q)
	docker rmi -f venv
