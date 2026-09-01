# Stage 1: Build stage
FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o payment-service .

# Stage 2: Runtime security-hardened stage (Distroless)
FROM gcr.io/distroless/static-debian12:nonroot
WORKDIR /app
COPY --from=builder /app/payment-service /app/payment-service
USER 65532:65532
EXPOSE 8443
ENTRYPOINT ["/app/payment-service"]
