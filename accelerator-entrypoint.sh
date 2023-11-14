#!/bin/sh

if [ "$KCPTUBE_PORT_START" ] && [ "$KCPTUBE_PORT_END" ]; then
    sed -i "s#kcptube_port_start#$KCPTUBE_PORT_START#g" /etc/kcptube/config.conf
    sed -i "s#kcptube_port_end#$KCPTUBE_PORT_END#g" /etc/kcptube/config.conf
else
    sed -i "s#kcptube_port_start#60000#g" /etc/kcptube/config.conf
    sed -i "s#kcptube_port_end#62500#g" /etc/kcptube/config.conf
fi

exec "$@"
