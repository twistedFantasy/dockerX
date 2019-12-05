ARG IMAGE
FROM $IMAGE
LABEL maintainer="Denis Sventitsky <denis.sventitsky@gmail.com> / Twisted Fantasy <twisteeed.fantasy@gmail.com>"

RUN mkdir -p /var/app
WORKDIR /var/app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o main.go

EXPOSE 8000

CMD ["./main"]
