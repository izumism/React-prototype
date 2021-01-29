image = react/template:latest
container = react-practice
workdir = /home/app

.PHONY: all build run bash clean

all:

build:
	docker build -t $(image) .

run:
	docker run -d --name $(container) -p 4000:4000 -v $(shell pwd)/app:$(workdir) -w $(workdir) $(image) tail -f /dev/null

bash:
	docker exec -it $(container) bash

rm:
	docker container rm -f $(container)
