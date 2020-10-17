IMAGE = ruby-webapp-course
DOCKER_RUN = docker run \
		--volume `pwd`:/app \
		--rm \
		--tty \
		--interactive \
		--publish 4567:4567 \
		$(IMAGE)

test:
	$(DOCKER_RUN) ruby test.rb

server:
	$(DOCKER_RUN) rackup -o 0.0.0.0 -p 4567

sh:
	$(DOCKER_RUN) /bin/sh

build:
	docker build -t $(IMAGE) .

.PHONY: test server sh build
