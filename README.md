# accelerator
a game accelerator


```shell

docker run --restart=always --network jason --name accelerator -p 8585:8585 --cap-add NET_ADMIN -e UDP2RAW_ADDRESS=[::] -e UDP2RAW_PORT=8585 -e KCPTUN_DS=2 -e KCPTUN_PS=2 -d accelerator

```
