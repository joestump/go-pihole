deps:
	go install github.com/deepmap/oapi-codegen/cmd/oapi-codegen@latest
	go mod edit -replace github.com/joestump/go-pihole=../go-pihole
	go mod vendor

client:
	oapi-codegen -generate 'types,client' -package pihole pihole.yaml > pihole/api.go

build:
	go build ./...
