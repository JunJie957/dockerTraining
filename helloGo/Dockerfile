FROM golang:1.16 as builder
RUN mkdir -p /go/src/test
WORKDIR /go/src/test
COPY main.go go.mod .
RUN CGO_ENABLED=0 GOOS=linux go build -o app .

FROM alpine:latest
LABEL version="1.0.2"
RUN apk --no-cache add ca-certificates
WORKDIR /root
COPY --from=builder /go/src/test/app .
CMD ["./app"]
