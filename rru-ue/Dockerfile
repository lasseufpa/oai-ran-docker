FROM base-ran
MAINTAINER Cleverson Nahum <cleversonahum@gmail.com>

VOLUME ["/dev/bus/usb"]
VOLUME ["/config_files"]

ENV USER=root
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /openairinterface5g/

RUN /bin/bash -c "sed -i '102i\ host=NULL;\' ./openair3/NAS/UE/API/USER/user_api.c "

RUN /bin/bash -c "source oaienv; sudo apt-get install net-tools iputils-ping; ./cmake_targets/build_oai --UE"
