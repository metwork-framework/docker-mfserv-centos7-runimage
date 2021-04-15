FROM metwork/centos7-opinionated:latest
ARG BRANCH
MAINTAINER Fabien MARTY <fabien.marty@gmail.com>

ENV S6_KILL_FINISH_MAXTIME=300000 \
    METWORK_CONFIG= \
    MFSERV_CONFIG_URL= \
    MFSERV_PLUGINS_URLS= \
    MFSERV_PLUGINS_CONFIGS_URLS=

COPY root /

RUN /usr/local/bin/fix_branch.sh ${BRANCH}
RUN yum -y install metwork-mfserv-full metwork-mfext-layer-python2

ENTRYPOINT ["/init"]
