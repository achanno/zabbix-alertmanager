FROM golang:1-alpine AS build
LABEL Maintainer="info@devopy.io" Description="Fully automated Zabbix and Prometheus Alertmanager integration"
RUN apk update && apk add make git gcc musl-dev
ENV GO111MODULE on
RUN make build
RUN mv zal /zal
