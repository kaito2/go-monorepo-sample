# ref:
# - https://docs.docker.com/language/golang/build-images/
# - https://sysdig.jp/blog/dockerfile-best-practices/

#
# Build
#
FROM golang:1.19 as builder

ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GOARCH=amd64
WORKDIR /build

COPY app1/go.mod ./
COPY app1/go.sum ./
RUN go mod download

COPY . .

RUN go build -o main app1/main.go

#
# Deploy
#
# hadolint ignore=DL3007
FROM gcr.io/distroless/static-debian11:latest

WORKDIR /

COPY --from=builder /build/main /main

USER nonroot

EXPOSE 8080

CMD [ "/main" ]
