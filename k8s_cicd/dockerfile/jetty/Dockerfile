FROM registry.mydomain.com/centos-base:v2
MAINTAINER 2367192101@qq.com

ENV TZ "Asia/Shanghai"
ENV JAVA_HOME "/jdk"
ENV JRE_HOME "/jdk"

COPY jetty-9.4.7 /jetty
WORKDIR "/jetty"
expose 8080
CMD ["/jetty/bin/jetty.sh","run"]
