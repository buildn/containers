FROM centos:latest
MAINTAINER Debasish Nath <nath.debasish@gmail.com>

RUN yum install -y \
   curl \
   which \
   java-1.8.0-openjdk \
   java-1.8.0-openjdk-devel

COPY confluent.repo /etc/yum.repos.d
COPY start.sh /root/start.sh

RUN rpm --import https://packages.confluent.io/rpm/5.3/archive.key && \
    yum clean all && \
    yum -y install confluent-platform-2.12

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk/

EXPOSE 9021

CMD ["/bin/bash", "/root/start.sh"]
