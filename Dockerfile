FROM bitnami/minideb:bookworm

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y xterm fluxbox novnc tigervnc-standalone-server && \
    echo "vncserver :1 -geometry 2560x1440 -depth 24 -localhost -nolisten tcp -rfbport 5900 && websockify --web /usr/share/novnc/ --wrap-mode=ignore 6080 localhost:5900 &" > /usr/local/bin/startnovnc && \
    chmod 755 /usr/local/bin/startnovnc && \
    echo "Welcome to the codespaces!! to start novnc type startnovnc" >> /root/.bashrc
