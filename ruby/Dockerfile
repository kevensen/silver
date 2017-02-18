FROM ruby

MAINTAINER kevensen@redhat.com

USER root
RUN yum update -y &&     yum clean all &&     rm -rf /var/cache/yum/*
USER default
