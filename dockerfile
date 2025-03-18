FROM golang:latest

WORKDIR /app
COPY . .

RUN go build -o main .
RUN go mod init


EXPOSE 8080
CMD ["go", "run", "main.go"]
