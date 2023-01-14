FROM debian:buster

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y --no-install-recommends libgl1:i386 libharfbuzz0b:i386 libc6:i386 libx11-6:i386 libxext6:i386 libxi6:i386 libxrender1:i386 libxtst6:i386

RUN mkdir /usr/lib/IPViewer
ADD ip-viewer.tar.gz /usr/lib/
COPY ip-viewer /
ENTRYPOINT /ip-viewer
