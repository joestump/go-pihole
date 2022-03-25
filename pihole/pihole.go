package pihole

import (
	"net/http"
	"net/url"
)

type Client struct {
	client  *http.Client
	BaseURL *url.URL
}
