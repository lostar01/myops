From registry.mydomain.com/centos-base-onjdk:v1
MAINTAINER 2367192101@qq.com

RUN yum install -y pcre-devel prce openssl-devel openssl zlib-devel zlib gzip gzip-devel gcc gcc-devel&& \
    mkdir /usr/software -p && \
    useradd -M -s /sbin/nologin nginx
COPY  nginx-1.12.2 /usr/software/nginx-1.12.2

WORKDIR "/usr/software/nginx-1.12.2"

RUN ./configure \
    --prefix=/usr/software/nginx \
    --user=nginx \
    --with-threads \
    --with-file-aio \
    --with-http_ssl_module \
    --with-http_realip_module \
    --with-http_sub_module \
    --with-http_stub_status_module \
    --with-pcre \
    --with-poll_module && \
    make && make install
COPY nginx.conf /usr/software/nginx/conf/nginx.conf
WORKDIR "/usr/software/nginx"
VOLUME "/usr/software/nginx/html"
EXPOSE 80
CMD ["/usr/software/nginx/sbin/nginx"]
