FROM ubuntu:18.04
MAINTAINER Cleverson Nahum <cleversonahum@gmail.com>

VOLUME ["/dev/bus/usb"]

ENV USER=root
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install linux-image-$(uname -r) linux-headers-$(uname -r) software-properties-common git wget git build-essential sudo psmisc vim -yq && git clone https://gitlab.eurecom.fr/oai/openairinterface5g.git 

WORKDIR /openairinterface5g/

RUN /bin/bash -c "git checkout -f 2020.w16; source oaienv ; ./cmake_targets/build_oai -I  --install-system-files --install-optional-packages;"
