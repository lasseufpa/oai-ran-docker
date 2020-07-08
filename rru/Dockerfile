FROM base-ran
MAINTAINER Cleverson Nahum <cleversonahum@gmail.com>

VOLUME ["/dev/bus/usb"]
VOLUME ["/config_files"]

ENV USER=root
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /openairinterface5g/

RUN /bin/bash -c "source oaienv ;./cmake_targets/build_oai -I -w USRP --eNB"

COPY ran.sh ./ran.sh

RUN chmod +x ran.sh

#RUN /bin/bash -c "source oaienv ; ./cmake_targets/build_oai -c -C; ./cmake_targets/build_oai -I ; ./cmake_targets/build_oai -w USRP --eNB"
