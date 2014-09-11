# CentOS 7 with Mono runtime
#
# Based on tips from bryanayers/docker-centos7-mono3.8.0
#

FROM andrefernandes/docker-devel-base

MAINTAINER Andre Fernandes

# Mono install
ENV MONO_VERSION 3.8.0-1
RUN wget http://download.mono-project.com/repo/xamarin.gpg && \
    rpm --import xamarin.gpg && \
    yum install -y yum-utils && \
    yum-config-manager --add-repo http://download.mono-project.com/repo/centos/ && \
    yum -y install libgdiplus0-3.8-0 mono-core-$MONO_VERSION mono-data-$MONO_VERSION mono-data-postgresql-$MONO_VERSION mono-data-sqlite-$MONO_VERSION mono-nunit-$MONO_VERSION mono-web-$MONO_VERSION

