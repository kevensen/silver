FROM jboss-eap64-openshift

MAINTAINER kevensen@redhat.com

USER root
RUN yum update -y &&     yum clean all &&     rm -rf /var/cache/yum/*
USER default
