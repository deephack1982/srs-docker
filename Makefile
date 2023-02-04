build:
	docker build -t srs-docker .

run:
	docker run \
	-e USER=srsuser  \
	-e PASSWORD=password  \
	-e VNC_PASSWORD=lemon123  \
	-e RESOLUTION=1680x720   \
	-p 5900:5900 \
	-p 5002:5002/tcp \
	-p 5002:5002/udp \
	-v /dev/shm:/dev/shm  \
	--name srsserver srs-docker:latest