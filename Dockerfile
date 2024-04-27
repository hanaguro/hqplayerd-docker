FROM fedora:37
ENV GMPRIS_VERSION="2.2.1-6"
ENV HQPLAYERD_VERSION="4.35.2-105"
RUN dnf install wget -y 
RUN wget https://www.sonarnerd.net/src/fc37/libgmpris-${GMPRIS_VERSION}.fc37.x86_64.rpm https://www.signalyst.eu/bins/hqplayerd/fc37/hqplayerd-${HQPLAYERD_VERSION}.fc37.x86_64.rpm
RUN yum install -y ./libgmpris-${GMPRIS_VERSION}.fc37.x86_64.rpm ./hqplayerd-${HQPLAYERD_VERSION}.fc37.x86_64.rpm
RUN hqplayerd -s hqplayer hqplayer
ENV HOME="/var/lib/hqplayer/home"
ENTRYPOINT ["/usr/bin/hqplayerd"]
