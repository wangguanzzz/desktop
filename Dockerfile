FROM consol/centos-xfce-vnc
MAINTAINER chris wang
USER root
RUN yum groups mark install "Development Tools" && yum groups mark convert "Development Tools" && yum groupinstall -y "Development Tools"
RUN yum install -y centos-release-scl-rh && yum clean all
RUN yum install -y libxml2-devel gcc gcc-c++ make redis memcached git java-1.8.0-openjdk wget zip unzip tar nodejs-npm cyrus-sasl-devel rh-ruby23-ruby-devel && yum clean all
ADD https://download.sublimetext.com/sublime_text_3_build_3176_x64.tar.bz2 /opt/sublime.tar
RUN cd /opt/ && tar xvf /opt/sublime.tar  && ln -s  /opt/sublime_text_3/sublime_text /usr/bin/subl && rm -f /opt/sublime.tar
ADD https://github.com/mozilla/geckodriver/releases/download/v0.21.0/geckodriver-v0.21.0-linux64.tar.gz /opt/geckodriver.tar.gz
RUN cd /opt/ && tar xvf /opt/geckodriver.tar.gz && mv /opt/geckodriver /usr/bin/ADD https://chromedriver.storage.googleapis.com/2.40/chromedriver_linux64.zip /opt/chromedriver_linux64.zip
RUN cd /opt/ && unzip chromedriver_linux64.zip && mv /opt/chromedriver /usr/bin/
