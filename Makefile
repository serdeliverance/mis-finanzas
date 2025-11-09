APP_NAME=mis-finanzas
BUILD_DIR=bin

build:
	@echo "Building $(APP_NAME)..."
	@mkdir -p $(BUILD_DIR)
	GOARCH=amd64 GOOS=darwin go build -o ${BUILD_DIR}/${APP_NAME}-darwin main.go
	#GOARCH=amd64 GOOS=linux go build -o ${BUILD_DIR}/${APP_NAME}-linux main.go
	#GOARCH=amd64 GOOS=windows go build -o ${BUILD_DIR}/${APP_NAME}-windows main.go

run: build
	./${BUILD_DIR}/${APP_NAME}-darwin

clean:
	go clean
	rm ${BUILD_DIR}/${APP_NAME}-darwin
	#rm ${BUILD_DIR}/${APP_NAME}-linux
	#rm ${BUILD_DIR}/${APP_NAME}-windows

test:
	@echo "TODO....."

fmt:
	@echo "TODO....."

vet:
	@echo "TODO....."