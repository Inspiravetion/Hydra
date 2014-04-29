#change this to /.src/hydra/* when I get tests for each part
TEST_DIRS = $(wildcard ./src/hydra/sc*)

all:
	go build ./hydra.go

everything:
	go build -a ./hydra.go

linux: 
	GOOS="linux" GOARCH="amd64" go build -o prod/hydra-linux-amd64 ./hydra.go

test:
	go test $(TEST_DIRS)/*.go

run:
	go run ./hydra.go

