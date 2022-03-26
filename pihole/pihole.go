package pihole

import (
	"api"

	"github.com/deepmap/oapi-codegen/pkg/securityprovider"
)

func CreateClient(server string, apiKey string) (api.Client, error) {
	apiKeyProvider, err := securityprovider.NewSecurityProviderApiKey("query", "auth", apiKey)
	if err != nil {
		return err
	}

	client, err := NewClient(server, WithRequestEditorFn(apiKeyProvider.Intercept))
	if err != nil {
		return err
	}

	return client
}
