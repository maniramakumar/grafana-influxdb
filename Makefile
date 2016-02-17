
TAG = v2.6.0
PREFIX = supershal

all: container

container:
	docker build -t $(PREFIX)/grafana:$(TAG) .

push:
	docker push $(PREFIX)/grafana:$(TAG)