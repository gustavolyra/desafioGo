FROM golang:1.23rc2-alpine3.20 as builder

WORKDIR /app

COPY . .

RUN go mod tidy
RUN go build -o main -ldflags "-s -w" .

FROM scratch

COPY --from=builder /app/main /app/main

ENTRYPOINT ["/app/main"]