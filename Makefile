.PHONY: build clean deploy format

build:
	env GOARCH=amd64 GOOS=linux go build -ldflags="-s -w" -o bin/list notes/list.go

clean:
	rm -rf ./bin

format:
	gofmt -w notes/list.go

deploy: clean build
	sls deploy --verbose
