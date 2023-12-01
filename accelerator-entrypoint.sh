#!/bin/sh

if [ "$KCPTUBE_PORT" ];then
    sed -i "s#kcptube_port#$KCPTUBE_PORT#g" /etc/kcptube/config.conf
else
    sed -i "s#kcptube_port#58525#g" /etc/kcptube/config.conf
fi

exec "$@"
