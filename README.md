# Dockerized Earthstar Replica Server

## Dependencies

- Docker

## Deploy

Create your `allow_list.json` file in the root of this repo. It should look something like this:

```json
["+welcome.a123", "+croissants.b234", "+potential.c345"]
```

Run the following command which builds and deploys your server listening on the default port `8080`. The `allow_list.json` is passed in as a volume at runtime.

```bash
docker build -t earthstar-replica-server . && docker run -v $(pwd)/allow_list.json:/app/replica-server/allow_list.json -it --init -p 8080:8080 earthstar-replica-server
```
