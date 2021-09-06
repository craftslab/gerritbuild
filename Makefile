# Build

.PHONY: FORCE

build: run-build
.PHONY: build

delivery: run-delivery
.PHONY: delivery

download: run-download
.PHONY: download

install: run-install
.PHONY: install

# Non-PHONY targets (real files)

run-build: FORCE
	./script/build.sh

run-delivery: FORCE
	./script/delivery.sh

run-download: FORCE
	./script/download.sh

run-install: FORCE
	./script/install.sh
