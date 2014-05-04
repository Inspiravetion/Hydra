#change this to /.src/hydra/* when I get tests for each part
TEST_DIRS = $(wildcard ./src/hydra/sc*)

TEST_FILES = scanner ast parser

all:
	go build ./hydra.go

everything:
	go build -a ./hydra.go

linux: 
	GOOS="linux" GOARCH="amd64" go build -o prod/hydra-linux-amd64 ./hydra.go

$(TEST_FILES):
	go test ./src/hydra/$@

test: $(TEST_FILES)

run:
	go run ./hydra.go
