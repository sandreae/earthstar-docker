FROM denoland/deno:1.19.0

EXPOSE 8080

WORKDIR /app

USER deno

ADD allow_list.json ./allow_list.json

RUN deno cache https://deno.land/x/earthstar_replica_server@v1.0.1/server.ts
CMD ["run", "--allow-all", "--no-check", "https://deno.land/x/earthstar_replica_server@v1.0.1/server.ts"]
