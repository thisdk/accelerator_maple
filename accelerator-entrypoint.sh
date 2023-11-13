#!/bin/sh

if [ $KCPTUBE_ADDRESS ];then
    sed -i "s#kcptube_address_value#$KCPTUBE_ADDRESS#g" /etc/kcptube/config.conf
else
    sed -i "s#kcptube_address_value#0.0.0.0#g" /etc/kcptube/config.conf
fi

exec "$@"
