FROM cdrx/pyinstaller-linux

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN apt-get update
RUN yes | apt-get install libgtk-3-dev
RUN yes | apt-get install build-essential
RUN yes | apt-get install freeglut3-dev
RUN yes | apt-get install libgstreamer0.10-dev
RUN yes | apt-get install libgstreamer-plugins-base0.10-dev
RUN yes | apt-get install libgstreamer0.10
RUN yes | apt-get install libgstreamer-plugins-base0.10
RUN yes | apt-get install libwebkitgtk-3.0-dev
RUN yes | apt-get install python-wxgtk3.0-dev

ENTRYPOINT ["/entrypoint.sh"]
