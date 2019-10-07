FROM ubuntu:18.04

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    sudo \
    build-essential \
    gettext \
    autoconf \
    automake \
    libproxy-dev \
    libxml2-dev \
    libtool \
    vpnc-scripts \
    pkg-config \
    libgnutls28-dev \
    git \
    expect

RUN git clone https://github.com/dlenski/openconnect.git
WORKDIR /openconnect
RUN ./autogen.sh
RUN ./configure
RUN make

COPY aberconnect.sh /openconnect
RUN chmod +x aberconnect.sh
ENTRYPOINT ["./aberconnect.sh"]



