#!/bin/sh

if [ "$KCPTUBE_ADDRESS" ];then
    sed -i "s#kcptube_address_value#$KCPTUBE_ADDRESS#g" /etc/kcptube/config.conf
else
    sed -i "s#kcptube_address_value#0.0.0.0#g" /etc/kcptube/config.conf
fi

if [ "$KCPTUBE_PORT_START" ] && [ "$KCPTUBE_PORT_END" ]; then
    sed -i "s#kcptube_port_start#$KCPTUBE_PORT_START#g" /etc/kcptube/config.conf
    sed -i "s#kcptube_port_end#$KCPTUBE_PORT_END#g" /etc/kcptube/config.conf
else
    sed -i "s#kcptube_port_start#55000#g" /etc/kcptube/config.conf
    sed -i "s#kcptube_port_end#65000#g" /etc/kcptube/config.conf
fi

exec "$@"
