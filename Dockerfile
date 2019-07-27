ARG BASE_IMAGE=pratushnyi/anyphp:buster

FROM ${BASE_IMAGE}
LABEL maintainer="Pavlo Ratushnyi<pavel.dhq@gmail.com>" 

RUN apt-get update && \
    apt-get install -y \
        dirmngr

RUN apt-key adv --keyserver pool.sks-keyservers.net --recv-keys 5072E1F5

ARG MYSQL_VERSION=5.7

RUN S_VER=$(echo "$MYSQL_VERSION" | sed 's/\.//g') && \
    echo "deb http://repo.mysql.com/apt/debian $(lsb_release -sc) mysql-${MYSQL_VERSION}" | \
    tee "/etc/apt/sources.list.d/mysql${S_VER}.list"

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server