module github.com/joestump/pi-hole

go 1.18

require (
	github.com/deepmap/oapi-codegen v1.9.1
	github.com/getkin/kin-openapi v0.87.0
	github.com/joestump/go-pihole v0.0.0-20220325193655-c12c02459903
)

require (
	github.com/ghodss/yaml v1.0.0 // indirect
	github.com/go-openapi/jsonpointer v0.19.5 // indirect
	github.com/go-openapi/swag v0.19.5 // indirect
	github.com/inconshreveable/mousetrap v1.0.0 // indirect
	github.com/mailru/easyjson v0.0.0-20190626092158-b2ccc519800e // indirect
	github.com/spf13/cobra v1.4.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
)

replace github.com/joestump/go-pihole => ../go-pihole
