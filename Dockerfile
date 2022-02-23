FROM denoland/deno:1.19.0

EXPOSE 8080
EXPOSE 443

WORKDIR /app

RUN mkdir /app/data/ \
		&& chown deno:deno /app/data/

VOLUME [ "/app/data" ]

USER deno

RUN deno cache --no-check https://deno.land/x/earthstar_replica_server@v1.1.0/server.ts
CMD ["run", "--allow-all", "--no-check", "https://deno.land/x/earthstar_replica_server@v1.1.0/server.ts", "--allowList=/app/allow_list.json"]
