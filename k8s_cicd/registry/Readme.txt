1.  mkdir /data/docker/registryconf -p
2.  Openssl req -x509 -days 3650 -nodes -newkey rsa:2048 -keyout  /data/docker/registryconf/docker-registry.key -out  /data/docker/registryconf/docker-registry.crt
    #ubuntu
    apt-get install apache2-utils
    #centos
    yum install httpd-tools

3.  #download docker-compose
     curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
     chmod +x /usr/local/bin/docker-compose
4.  docker-compose up -d
