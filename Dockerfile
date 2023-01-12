# ref:
# - https://docs.docker.com/language/golang/build-images/
# - https://sysdig.jp/blog/dockerfile-best-practices/

#
# Build
#
FROM golang:1.19 as builder

ARG service
RUN echo 'Build target service: ${service}'
RUN test -n "$service" || (echo "service  not set" && false)

ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GOARCH=amd64
WORKDIR /build

COPY . .

WORKDIR /build/${service}
RUN go build -o main cmd/main.go

#
# Deploy
#
# hadolint ignore=DL3007
FROM gcr.io/distroless/static-debian11:latest

ARG service

WORKDIR /

COPY --from=builder /build/${service}/main /main

USER nonroot

EXPOSE 8080

CMD [ "/main" ]
