FROM denoland/deno:latest

EXPOSE 8080

WORKDIR /app

USER deno

ADD . .

COPY allow_list.json /app/replica-server/allow_list.json

WORKDIR /app/replica-server

CMD ["run", "--allow-net", "--allow-env", "--no-check", "server.ts"]
