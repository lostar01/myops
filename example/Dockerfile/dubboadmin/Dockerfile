FROM registry.gpdi.com/jetty:9.4.7

MAINTAINER 2367192101@qq.com

COPY ROOT /jetty/webapps/ROOT
COPY run.sh /run.sh
RUN chmod a+x /run.sh
CMD ["/run.sh"]

