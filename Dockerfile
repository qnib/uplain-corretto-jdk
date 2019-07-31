ARG DOCKER_REGISTRY=docker.io
ARG FROM_IMG_REPO=qnib
ARG FROM_IMG_NAME="uplain-init"
ARG FROM_BASE_TAG="bionic-20190612"
ARG FROM_IMG_TAG="2019-07-11"
ARG FROM_IMG_HASH=""
FROM ${DOCKER_REGISTRY}/${FROM_IMG_REPO}/${FROM_IMG_NAME}:${FROM_BASE_TAG}_${FROM_IMG_TAG}${DOCKER_IMG_HASH}

RUN apt-get update \
 && apt-get install -y wget java-common=0.68ubuntu1~18.04.1 \
 && wget -q https://d3pxv6yz143wms.cloudfront.net/11.0.4.11.1/java-11-amazon-corretto-jdk_11.0.4.11-1_amd64.deb \
 && dpkg -i java-11-amazon-corretto-jdk_11.0.4.11-1_amd64.deb \
 && rm -f java-11-amazon-corretto-jdk_11.0.4.11-1_amd64.deb
