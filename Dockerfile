FROM origin

MAINTAINER Kenneth D. Evensen <kevensen@redhat.com>

LABEL io.s2i.color=silver

RUN whoami
RUN export UNPRIV_USER=$(whoami)
RUN echo "== The Unprivilged User => "; echo $UNPRIV_USER

#USER root
#RUN yum update -y \
#    && yum clean all \ 
#    && rm -rf /var/cache/yum/*
#USER
