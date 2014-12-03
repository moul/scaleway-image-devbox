DOCKER_NAMESPACE =	moul/armhf-
NAME =			ocs-devbox
VERSION =		vivid
VERSION_ALIASES =	15.04
TITLE =			"moul' DevBox"
DESCRIPTION =		Image with build tools
IS_LATEST =		1
SOURCE_URL =		https://github.com/moul/ocs-image-devbox


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget https://raw.githubusercontent.com/online-labs/image-tools/master/docker-rules.mk
-include docker-rules.mk


## Here you can add custom commands and overrides
