package pihole

import (
	"github.com/deepmap/oapi-codegen/pkg/securityprovider"
)

func CreateClient(server string, apiKey string) (*ClientWithResponses, error) {
	apiKeyProvider, err := securityprovider.NewSecurityProviderApiKey("query", "auth", apiKey)
	if err != nil {
		return nil, err
	}

	client, err := NewClientWithResponses(server, WithRequestEditorFn(apiKeyProvider.Intercept))
	if err != nil {
		return nil, err
	}

	return client, nil
}
