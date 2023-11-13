# accelerator
a game accelerator


```shell

docker run --restart=always --network jason --name accelerator -p 55000-65000:55000-65000/udp -e KCPTUBE_ADDRESS=::1 -e KCPTUBE_PORT_START=55000 -e KCPTUBE_PORT_END=65000 -d accelerator

```
