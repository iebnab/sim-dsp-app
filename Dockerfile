# Synthetic bidder image for posture-product tests. Not deployed.
FROM golang:1.26.2-alpine AS build
WORKDIR /src
COPY go.mod ./
COPY cmd ./cmd
RUN CGO_ENABLED=0 go build -trimpath -ldflags="-s -w" -o /out/bidder ./cmd/bidder

FROM gcr.io/distroless/static-debian12:nonroot
COPY --from=build /out/bidder /bidder
USER nonroot:nonroot
EXPOSE 8080
ENTRYPOINT ["/bidder"]
