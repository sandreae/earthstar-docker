FROM denoland/deno:latest

EXPOSE 8080

WORKDIR /app

USER deno

ADD . .

WORKDIR /app/replica-server

CMD ["run", "--allow-net", "--allow-env", "--no-check", "server.ts"]
