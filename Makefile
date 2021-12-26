.DEFAULT_GOAL := build

BINARY_NAME=chess-engine
ENTRY_POINT=cmd/chess-engine/main.go

build:
	GOARCH=amd64 GOOS=darwin go build -o ${BINARY_NAME}-darwin ${ENTRY_POINT}
	GOARCH=amd64 GOOS=linux go build -o ${BINARY_NAME}-linux ${ENTRY_POINT}
	GOARCH=amd64 GOOS=windows go build -o ${BINARY_NAME}-windows ${ENTRY_POINT}

clean:
	go clean
	rm ${BINARY_NAME}-darwin
	rm ${BINARY_NAME}-linux
	rm ${BINARY_NAME}-windows
