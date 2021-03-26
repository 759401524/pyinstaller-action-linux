FROM cdrx/pyinstaller-linux

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN apt-get update
RUN yes | apt-get install build-essential libgtk-3-dev libwebkitgtk-3.0-dev freeglut3-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libgstreamer0.10 libgstreamer-plugins-base0.10


ENTRYPOINT ["/entrypoint.sh"]
