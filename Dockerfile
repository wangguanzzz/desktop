FROM consol/centos-xfce-vnc
MAINTAINER chris wang
USER root
RUN yum install -y centos-release-scl-rh && yum clean all
RUN yum install -y libxml2-devel gcc gcc-c++ make redis memcached git java-1.8.0-openjdk wget zip unzip tar nodejs-npm cyrus-sasl-devel rh-ruby23-ruby-devel && yum clean all
ADD https://download.sublimetext.com/sublime_text_3_build_3176_x64.tar.bz2 /opt/sublime.tar
RUN tar xvf /opt/sublime.tar && ln -s  /opt/sublime_text_3/sublime_text /usr/bin/subl && rm -f /opt/sublime.tar
