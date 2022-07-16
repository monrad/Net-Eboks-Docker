FROM ubuntu:20.04@sha256:669e010b58baf5beb2836b253c1fd5768333f0d1dbcb834f7c07a4dc93f474be
LABEL maintainer="Mikkel Mondrup Kristensen"

ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies.
RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y --no-install-recommends \
  apt-utils \
  build-essential \
  libdatetime-perl \
  libdigest-sha-perl \
  libhttp-message-perl \
  libio-socket-ssl-perl \
  libmime-tools-perl \
  libnet-ssleay-perl \
  libssl-dev \
  libwww-perl \
  libxml-simple-perl \
  && apt-get clean \
  && rm -Rf /var/lib/apt/lists/* \
  && rm -Rf /usr/share/doc && rm -Rf /usr/share/man

RUN yes yes | cpan Net::Eboks