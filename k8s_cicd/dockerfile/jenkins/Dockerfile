FROM registry.mydomain.com/centos-base:v2
MAINTAINER 2367192101@qq.com

ENV JAVA_HOME "/jdk"
ENV JRE_HOME "/jdk/jre"
ENV JENKINS_HOME "/jenkins"
ENV MAVEN_HOME "/maven-3.5.2"

COPY jdk1.8.0_131 /jdk
COPY maven-3.5.2 /maven-3.5.2
COPY jenkins.war /opt/
COPY .ssh /root/.ssh
RUN mkdir /jenkins && \
    yum -y install git && \
    yum clean all && \
    git config --global user.name jenkins && \
    git config --global user.email jenkins@gpdi.com
WORKDIR "/jenkins"
VOLUME "/jenkins"
expose 8080
CMD ["/jdk/bin/java","-jar","-Xms512m","-Xmx1024m","-XX:ParallelGCThreads=4","-XX:ConcGCThreads=4","-Dhudson.slaves.ChannelPinger.pingInterval=-1","-Dhudson.security.ExtendedReadPermission=true","-Dgroovy.use.classvalue=true","/opt/jenkins.war"]
