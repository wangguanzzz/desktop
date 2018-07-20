FROM consol/centos-xfce-vnc
MAINTAINER chris wang
USER root
RUN yum install -y centos-release-scl-rh && yum clean all
RUN yum install -y libxml2-devel gcc make redis memcached git java-1.8.0-openjdk wget zip unzip tar nodejs-npm cyrus-sasl-devel rh-ruby23-ruby-devel && yum clean all
