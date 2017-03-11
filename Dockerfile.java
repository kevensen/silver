FROM s2i-base-rhel7:latest

MAINTAINER Kenneth D. Evensen <kevensen@redhat.com>

LABEL io.s2i.color=silver

USER root
RUN yum install java-1.8.0-openjdk-devel --disablerepo='*' --enablerepo='rhel-7-server-rpms' -y \
    && yum clean all \ 
    && rm -rf /var/cache/yum/*
USER 1001
