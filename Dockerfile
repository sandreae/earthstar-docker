FROM denoland/deno:latest

EXPOSE 8080

WORKDIR /app

USER deno

ADD . .

WORKDIR /app/replica-server

CMD ["run", "--allow-net", "--allow-env", "--no-check", "https://deno.land/x/earthstar_replica_server@v1.0.0/server.ts"]
