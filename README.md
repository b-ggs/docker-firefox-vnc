# docker-firefox-vnc

[![](https://images.microbadger.com/badges/version/bxggs/firefox-vnc.svg)](https://microbadger.com/images/bxggs/firefox-vnc) [![](https://images.microbadger.com/badges/image/bxggs/firefox-vnc.svg)](https://microbadger.com/images/bxggs/firefox-vnc)

Firefox on Openbox over VNC with support for setting default configs and sideloading extensions

## Usage

### Quick start

Start Firefox and VNC server on port 5901

```bash
docker run -d --rm -v $HOME/Downloads:/data/downloads -p 5901:5901 bxggs/firefox-vnc
```

### Additional options

* Bindmount a local directory to the Firefox's default download directory

```bash
-v /path/to/my/downloads:/data/downloads
```

* Bindmount a local directory containing Firefox extensions to install on Firefox

```bash
-v /path/to/my/extensions:/data/extensions
```

* Bindmount a local directory containing Firefox config files to apply on Firefox

```bash
-v /path/to/my/configs:/data/configs
```

* Change VNC password (default: `vncpassword`)

```bash
-e VNC_PASSWORD=hunter2
```

* Change VNC port (default: `5901`)

```bash
-e VNC_PORT=9001
-p 9001:9001
```

* Change display resolution (default: `1280x720`)

```bash
-e DISPLAY_RESOLUTION=1366x768
```

### Sample

```bash
$ ls extensions
ublock_origin.xpi  sample.xpi

$ ls configs
custom.js

$ docker run \
    -d \
    --rm \
    -p 9001:9001 \
    -v $HOME/Downloads:/data/downloads \
    -v $PWD/extensions:/data/extensions \
    -v $PWD/configs:/data/configs \
    -e VNC_PASSWORD=hunter2 \
    -e VNC_PORT=9001 \
    bxggs/firefox-vnc
```

## Links

* [b-ggs/docker-firefox-vnc][github] on GitHub

* [bxggs/firefox-vnc][dockerhub] on Docker Hub

[github]: https://github.com/b-ggs/docker-firefox-vnc
[dockerhub]: https://hub.docker.com/r/bxggs/firefox-vnc
