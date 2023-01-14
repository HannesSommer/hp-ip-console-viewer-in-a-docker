SHELL=/bin/bash

run: build
	docker run --network host -v /tmp/.X11-unix:/tmp/.X11-unix -v $(HOME)/.Xauthority:/root/.Xauthority -v $(HOME)/IPViewer:/root/IPViewer -e DISPLAY -h $(shell hostname) -it --rm ip-viewer
build:
	docker build -t ip-viewer .
