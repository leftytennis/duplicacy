#GOOS=darwin
#GOARCH=arm64

.PHONY: build

APP_VERSION := $(shell git describe)

build:
	GOOS=$(GOOS) GOARCH=$(GOARCH) go build -o duplicacy-${APP_VERSION}-${GOOS}-${ARCH} -ldflags "-X main.GitCommit=$(APP_VERSION)" duplicacy/duplicacy_main.go
