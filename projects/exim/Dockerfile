# Copyright 2018 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
################################################################################


FROM gcr.io/oss-fuzz-base/base-builder
MAINTAINER hs@schlittermann.de
ARG SRC=/src

# We can't just use build-dep because no source lines are in apt in
# the image. I figured this out by doing
#    `apt-get install build-essential`
# followed by
#    `apt-get -s build-dep exim4 | egrep ^Inst | cut -d\ -f 2 | sort -u`
# to get the package list. I used an editor macro to add whitespace
# and backslashes. Things that were unavailable in the fuzzer image
# were then manually removed.There might be a better way, but I'm not
# sure what it is.

RUN apt-get update && apt-get install -y \
  autoconf \
  automake \
  autopoint \
  autotools-dev \
  bsdmainutils \
  debhelper \
  dh-autoreconf \
  dh-strip-nondeterminism \
  docbook-xml \
  docbook-xsl \
  dwz \
  file \
  gettext \
  gettext-base \
  groff-base \
  intltool-debian \
  libarchive-zip-perl \
  libbsd0 \
  libcroco3 \
  libdb5.3-dev \
  libfile-stripnondeterminism-perl \
  libglib2.0-0 \
  libgmp-dev \
  libgmpxx4ldbl \
  libgnutls-openssl27 \
  libgnutls28-dev \
  libgnutlsxx28 \
  libgssapi-krb5-2 \
  libice-dev \
  libice6 \
  libident \
  libident-dev \
  libidn11 \
  libk5crypto3 \
  libkeyutils1 \
  libkrb5-3 \
  libkrb5support0 \
  libldap2-dev \
  libmagic1 \
  libpam0g-dev \
  libpcre16-3 \
  libpcre3-dev \
  libpcre32-3 \
  libpcrecpp0v5 \
  libperl-dev \
  libpipeline1 \
  libpq-dev \
  libpq5 \
  libpthread-stubs0-dev \
  libsasl2-dev \
  libsigsegv2 \
  libsm-dev \
  libsm6 \
  libsqlite3-dev \
  libtasn1-6-dev \
  libtool \
  libuchardet0 \
  libx11-6 \
  libx11-data \
  libx11-dev \
  libxau-dev \
  libxau6 \
  libxaw7 \
  libxaw7-dev \
  libxcb1 \
  libxcb1-dev \
  libxdmcp-dev \
  libxdmcp6 \
  libxext-dev \
  libxext6 \
  libxml2 \
  libxmu-dev \
  libxmu-headers \
  libxmu6 \
  libxpm-dev \
  libxpm4 \
  libxslt1.1 \
  libxt-dev \
  libxt6 \
  lynx \
  lynx-common \
  m4 \
  man-db \
  mysql-common \
  nettle-dev \
  po-debconf \
  sensible-utils \
  sgml-base \
  sgml-data \
  xml-core \
  xorg-sgml-doctools \
  xsltproc \
  xtrans-dev \
  zlib1g-dev

#RUN git clone git://git.exim.org/exim.git exim
RUN git clone --branch fuzz-no-cpp https://git.schlittermann.de/exim/exim
WORKDIR exim
COPY build.sh $SRC/
