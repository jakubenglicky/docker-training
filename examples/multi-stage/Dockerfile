FROM golang as builder

WORKDIR /src

COPY app .

RUN go build main.go



FROM debian:11

COPY --from=builder /src/main /usr/bin/go-hello
