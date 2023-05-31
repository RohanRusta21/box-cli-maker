FROM golang:1.20
WORKDIR /app
COPY go.mod .
COPY go.sum .
RUN go build -o bin .
ENTRYPOINT ["/app/bin"]
