NAME=metwork/mfserv-centos7-runimage
VERSION=$(shell ./version.sh)

build:
	docker build -t $(NAME):$(VERSION) .

debug: build
	docker run -i -t $(NAME):$(VERSION) bash
