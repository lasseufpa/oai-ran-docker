FROM base-ran
MAINTAINER Cleverson Nahum <cleversonahum@gmail.com>

VOLUME ["/dev/bus/usb"]
VOLUME ["/config_files"]

ENV USER=root
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /openairinterface5g/

RUN /bin/bash -c "sudo apt-get install net-tools iputils-ping;"

RUN /bin/bash -c "source oaienv; ./cmake_targets/build_oai --UE --musim"
