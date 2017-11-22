FROM docker.io/centos
MAINTAINER 2367192101@qq.com

ENV LANG "en_US.UTF-8"
ENV TZ "Asia/Shanghai"
# Use the aliyun mirror.
RUN curl http://mirrors.aliyun.com/repo/Centos-7.repo >> /etc/yum.repos.d/CentOS-Base.repo && \
    ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone && \
     yum install -y fontconfig xorg-x11-font-utils && \
     yum install -y kde-l10n-Chinese  && \
     yum reinstall -y glibc-common && \
     yum clean all
