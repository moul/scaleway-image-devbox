## -*- docker-image-name: "moul/armhf-devbox" -*-
FROM armbuild/ocs-app-docker:vivid
MAINTAINER Manfred Touron <m@42.am>


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN apt-get -q update &&      \
    apt-get -y -qq upgrade && \
    apt-get install -y -qq    \
        bc                    \
        build-essential       \
        emacs24-nox           \
        git                   \
        libncurses5-dev       \
        s3cmd                 \
        u-boot-tools          \
    && apt-get clean


# Patch rootfs
ADD ./patches/root/ /root/


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
