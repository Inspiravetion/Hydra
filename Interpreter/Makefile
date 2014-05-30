#change this to /.src/hydra/* when I get tests for each part
TEST_DIRS = $(wildcard ./src/hydra/sc*)

TEST_FILES = scanner ast parser

all:
	go build -a ./hydra.go

linux-amd64: 
	GOOS="linux" GOARCH="amd64" go build -o prod/hydra-linux-amd64 ./hydra.go

linux-386: 
	GOOS="linux" GOARCH="386" go build -o prod/hydra-linux-386 ./hydra.go

windows-amd64: 
	GOOS="windows" GOARCH="amd64" go build -o prod/hydra-windows-amd64 ./hydra.go

windows-386: 
	GOOS="windows" GOARCH="386" go build -o prod/hydra-windows-386 ./hydra.go

xc: windows-386 windows-amd64 linux-386 linux-amd64

$(TEST_FILES):
	go test ./src/hydra/$@

test: $(TEST_FILES)

run:
	go run ./hydra.go
