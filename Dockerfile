FROM debian:buster-slim

ENV DISPLAY=:1
ENV DISPLAY_RESOLUTION=1280x720
ENV VNC_PASSWORD=vncpassword
ENV VNC_PORT=5901

RUN apt-get update && \
      apt-get install -y --no-install-recommends \
        firefox-esr \
        x11vnc \
        xvfb \
        openbox \
        menu \
        xterm \
        thunar && \
      rm -rf /var/lib/apt/lists/*

RUN mkdir -p /data/downloads

ADD firefox-config.js /etc/firefox-esr/

ADD entrypoint /

ENTRYPOINT ["/entrypoint"]

CMD ["firefox"]
