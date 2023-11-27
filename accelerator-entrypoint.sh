#!/bin/sh

if [ "$UDPHOP_PORT" ];then
    sed -i "s#udphop_port#$UDPHOP_PORT#g" /etc/udphop/config.conf
else
    sed -i "s#udphop_port#8585#g" /etc/udphop/config.conf
fi

exec "$@"
