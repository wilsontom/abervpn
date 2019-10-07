# abervpn

[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active) [![Build Status](https://travis-ci.org/wilsontom/abervpn.svg?branch=master)](https://travis-ci.org/wilsontom/abervpn) ![License](https://img.shields.io/badge/license-GNU%20GPL%20v3.0-blue.svg "GNU GPL v3.0") [![Docker Pulls](https://img.shields.io/docker/pulls/wilsontom/abervpn.svg)](https://hub.docker.com/r/wilsontom/abervpn)

__Docker image for connecting to the Aberystwyth Univeristy VPN using openconnect__

The **abervpn** image allows you to connect the the GlobalProtect portal *via* openconnect. The image is mostly based on the standalone openconnect docker image, available [here](https://github.com/dlenski/openconnect)

**Username** and your **OTP** (One-Time-Password) are passed as arguments to the docker command.


#### To connect

```sh
docker run -ti --rm --privileged --net=host --name vpn wilsontom/abervpn <USERNAME> <OTP>
```
