FROM golang:alpine AS builder

RUN mkdir /app
WORKDIR /app
ADD go.* *.go /app/
RUN go build


FROM timberio/vector:latest-alpine

RUN apk add -u supervisor

ADD supervisor.conf /etc/
ADD vector.toml /etc/vector/

RUN mkdir -p /app /var/lib/vector
WORKDIR /app
COPY --from=builder /app/flytest /app/

ENTRYPOINT ["supervisord", "-c", "/etc/supervisor.conf"]
