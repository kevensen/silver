FROM origin

MAINTAINER Kenneth D. Evensen <kevensen@redhat.com>

LABEL io.s2i.color=silver


USER root
RUN yum update -y \
    && yum clean all \ 
    && rm -rf /var/cache/yum/*
USER 1001
