FROM dart:3.3.0 AS build

WORKDIR /app
COPY . .

RUN dart pub get
RUN dart compile --verbose exe bin/main.dart -o bin/server 


FROM alpine:latest

ENV runmode=production
ENV serverid=default
ENV logging=normal
ENV role=monolith


COPY --from=build /runtime/ /
COPY --from=build /app/bin/server server
COPY --from=build /app/config/ config/
COPY --from=build /app/web/ web/

COPY --from=build /app/migrations/ /app/migrations/

# Copy passwords file
COPY ./config/passwords.yaml /app/config/passwords.yaml

EXPOSE 8080
EXPOSE 8081
EXPOSE 8082

# ENTRYPOINT ./server migrate up --mode=$runmode --server-id=$serverid && ./server --mode=$runmode --server-id=$serverid --logging=$logging --role=$role
ENTRYPOINT ["./server", "migrate", "up", "--mode=$runmode", "--server-id=$serverid", "&&", "/app/server", "--mode=$runmode", "--server-id=$serverid", "--logging=$logging", "--role=$role"]
