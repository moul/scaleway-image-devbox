DOCKER_NAMESPACE =	moul/armhf-
NAME =			ocs-devbox
VERSION =		vivid
VERSION_ALIASES =	15.04 latest
TITLE =			moul devbox
DESCRIPTION =		Image with build tools
SOURCE_URL =		https://github.com/moul/ocs-image-devbox


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk


## Here you can add custom commands and overrides
