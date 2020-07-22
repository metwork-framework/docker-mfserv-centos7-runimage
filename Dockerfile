FROM metwork/centos7-opinionated:latest
MAINTAINER Fabien MARTY <fabien.marty@gmail.com>

COPY root /

RUN yum -y install metwork-mfserv-full metwork-mfext-layer-python2

ENTRYPOINT ["/init"]
