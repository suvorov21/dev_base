FROM centos:centos7 as dev_base

RUN yum install -y epel-release centos-release-scl

RUN yum install -y git cmake3 gcc-c++ gcc binutils \
    libX11-devel libXpm-devel libXft-devel libXext-devel openssl-devel \
    python-devel

ENV COMMON_INSTALL_PREFIX=/usr/local/
ENV COMMON_BUILD_PREFIX=/usr/local/build/
RUN mkdir -p $COMMON_BUILD_PREFIX && \
    mkdir -p $COMMON_INSTALL_PREFIX


RUN yum clean all && rm -rf /var/cache/yum
