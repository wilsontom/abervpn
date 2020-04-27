# abervpn

![Project Status](https://img.shields.io/badge/repo%20status-active-brightgreen.svg) ![Docker Image CI](https://github.com/wilsontom/abervpn/workflows/Docker%20Image%20CI/badge.svg) ![License](https://img.shields.io/badge/license-GNU%20GPL%20v3.0-blue.svg "GNU GPL v3.0") 

__Docker image for connecting to the Aberystwyth Univeristy VPN using openconnect__

The **abervpn** image allows you to connect the the GlobalProtect portal *via* openconnect. 

**Username** and your **OTP** (One-Time-Password) are passed as arguments to the docker command.


#### To connect

```sh
docker run -ti --rm --privileged --net=host --name vpn wilsontom/abervpn <USERNAME> <OTP>
```
