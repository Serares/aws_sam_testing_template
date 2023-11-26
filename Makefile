.PHONY: build

build:
	sam build

run:
	sam local start-api

build-homepage:
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o ./services/homepage ./services/homepage/

build-admin:
	cd services/admin/ui && NODE_OPTIONS=--openssl-legacy-provider npm run build && mv build/* ../../../admin/
