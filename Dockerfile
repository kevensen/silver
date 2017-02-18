FROM origin

MAINTAINER Kenneth D. Evensen <kevensen@redhat.com>

LABEL io.s2i.color=silver

RUN yum update -y
