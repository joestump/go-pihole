deps:
	go install github.com/deepmap/oapi-codegen/cmd/oapi-codegen@latest

client:
	oapi-codegen -generate 'types,client' -package pihole pihole.yaml > pihole/api.go
