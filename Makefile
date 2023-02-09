build:
	docker build -t deephack/srs-docker .

run:
	docker run \
	-e USER=srsuser  \
	-e PASSWORD=password  \
	-e VNC_PASSWORD=lemon123  \
	-p 5900:5900 \
	-p 5002:5002/tcp \
	-p 5002:5002/udp \
	-v /dev/shm:/dev/shm  \
	--name srsserver deephack/srs-docker:latest

push:
  docker push deephack/srs-docker:latest