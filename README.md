# docker-firefox-vnc

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
-e VNC_PASSWORD=anotherpassword
```

* Change VNC port (default: `5901`)

```bash
-e VNC_PORT=9001
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
    -p 5901:5901 \
    -v $HOME/Downloads:/data/downloads \
    -v ./extensions:/data/extensions \
    -v ./configs:/data/configs \
    bxggs/firefox-vnc
```
