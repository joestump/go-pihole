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

Use `http://localhost:8080/swagger.yaml` and click "Explore".
