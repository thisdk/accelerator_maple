#!/bin/sh

if [ $UDP2RAW_ADDRESS ];then
    sed -i "s#udp2raw_listener_address#$UDP2RAW_ADDRESS#g" /etc/supervisor/conf.d/supervisord.conf
else
    sed -i "s#udp2raw_listener_address#0.0.0.0#g" /etc/supervisor/conf.d/supervisord.conf
fi

if [ $UDP2RAW_PORT ];then
    sed -i "s#udp2raw_listener_port#$UDP2RAW_PORT#g" /etc/supervisor/conf.d/supervisord.conf
else
    sed -i "s#udp2raw_listener_port#8585#g" /etc/supervisor/conf.d/supervisord.conf
fi

if [ $KCPTUN_PS ];then
    sed -i "s#kcptun_parityshard_value#$KCPTUN_PS#g" /etc/supervisor/conf.d/supervisord.conf
else
    sed -i "s#kcptun_parityshard_value#8#g" /etc/supervisor/conf.d/supervisord.conf
fi

if [ $KCPTUN_DS ];then
    sed -i "s#kcptun_datashard_value#$KCPTUN_DS#g" /etc/supervisor/conf.d/supervisord.conf
else
    sed -i "s#kcptun_datashard_value#2#g" /etc/supervisor/conf.d/supervisord.conf
fi

exec "$@"
