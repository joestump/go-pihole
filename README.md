# go-pihole

## Local Development

### Run Swagger-UI

```
$ docker pull swaggerapi/swagger-ui
$ docker run -p 80:8080 swaggerapi/swagger-ui
```

### Run `http-server`

**NOTE:** Must be ran from repo root.

```
$ npm install -g http-server
$ http-server --cors
```

### Load `swagger.yaml` in Swagger-UI

 1. Navigate to `http://localhost/`
 1. Paste `http://localhost:8080/swagger.yaml` into the input field at the top of the page.
 2. Click "Explore".
