DOCKER_NAMESPACE = moul/armhf-
NAME =             ocs-devbox
VERSION =          vivid
IS_LATEST =        1
SOURCE_URL =       https://github.com/moul/ocs-image-devbox

all:	docker-rules.mk
docker-rules.mk:
	wget https://raw.githubusercontent.com/online-labs/image-tools/master/docker-rules.mk

-include docker-rules.mk
