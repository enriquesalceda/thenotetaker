.PHONY: build clean deploy

build:
	env GOARCH=amd64 GOOS=linux go build -ldflags="-s -w" -o bin/list notes/list.go

clean:
	rm -rf ./bin

deploy: clean build
	sls deploy --verbose
