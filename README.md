# Dockerized Earthstar Replica Server

## Dependencies

- Docker

## Deploy

- Create your `allow_list.json` file in the root of this repo.

Run the following command which builds and deploys your server to the default port `8080`. The `allow_list.json` is passed in as a volume at runtime.

```
docker build -t earthstar-replica-server . && docker run -v $(pwd)/allow_list.json:/app/replica-server/allow_list.json -it --init -p 8080:8080 earthstar-replica-server
```
