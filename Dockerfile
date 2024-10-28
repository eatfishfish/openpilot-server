FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG C.UTF-8
RUN sed -i 's@http://archive.ubuntu.com/ubuntu/@http://mirrors.aliyun.com/ubuntu/@g' /etc/apt/sources.list 

RUN apt-get update -q \
    && apt-get install -y git ffmpeg

RUN mkdir -p /root/openpilot
WORKDIR /root/openpilot

RUN git clone -b main --depth=1 https://github.com/eatfishfish/openpilot-server.git
WORKDIR /root/openpilot/openpilot-server

# replace config with your domain
RUN sed -i 's@laolang.duckdns.org@your_domain@g' /root/openpilot/openpilot-server/config.txt 

RUN sed -i 's@D:\\\\software\\\\ffmpeg.exe@ffmpeg@g' /root/openpilot/openpilot-server/config.txt 

#COPY op ./op
RUN mkdir op

ENTRYPOINT ["/root/openpilot/openpilot-server/opserver_linux_amd64"]
