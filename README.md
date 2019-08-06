# abervpn

__Docker image for connecting to the Aberystwyth Univeristy VPN using openconnect__

The **abervpn** image allows you to connect the the GlobalProtect portal *via* openconnect. The image is mostly based on the standalone openconnect docker image, available [here](https://github.com/dlenski/openconnect)


#### To connect

```sh
docker run -ti --rm --privileged --net=host --name vpn wilsontom/abervpn
```
