FROM base-ran
MAINTAINER Cleverson Nahum <cleversonahum@gmail.com>

VOLUME ["/dev/bus/usb"]
VOLUME ["/config_files"]

ENV USER=root
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /openairinterface5g/

RUN /bin/bash -c "source oaienv; ./cmake_targets/build_oai --eNB --mu -a"

#ENTRYPOINT [ "./cmake_targets/tools/make_agent_cache; "] 
