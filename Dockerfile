## -*- docker-image-name: "armbuild/ocs-service-tryit:vivid" -*-
FROM armbuild/ocs-app-docker:vivid

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
    && apt-get clean

# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
