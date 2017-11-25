#!/bin/bash
##########################
#    start jetty with env
##########################
set -e

ZOOKEEPER_IP="${ZOOKEEPER_IP}"
ZOOKEEPER_PORT="${ZOOKEEPER_PORT}"
ROOTPASS="${ROOTPASS}"
GUESTPASS="${GUESTPASS}"
ZOOKEEPER=${ZOOKEEPER}
if [ $(grep -i zookeeper /etc/hosts |wc -l) -eq 1 ];then
    ZOOKEEPER_IP=`grep -i zookeeper /etc/hosts |awk '{print $1}'`
fi

if [ -z $ZOOKEEPER_IP ];then
   ZOOKEEPER_IP=127.0.0.1
fi

if [ -z $ZOOKEEPER_PORT ];then
   ZOOKEEPER_PORT=2181
fi

if [ -z $ROOTPASS ];then
   ROOTPASS='Sgtc#dubbo33@Admin'
fi

if [ -z $GUESTPASS ];then
   GUESTPASS='Sgtc#dubbo33@Guest'
fi

if [ ! -z $ZOOKEEPER ];then
   ZOOKEEPER_IP=$ZOOKEEPER
fi

cat > /jetty/webapps/ROOT/WEB-INF/dubbo.properties <<EOF
dubbo.registry.address=zookeeper://${ZOOKEEPER_IP}:${ZOOKEEPER_PORT}
dubbo.admin.root.password=${ROOTPASS}
dubbo.admin.guest.password=${GUESTPASS}
EOF
/jetty/bin/jetty.sh run
