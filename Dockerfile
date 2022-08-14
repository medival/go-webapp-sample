FROM golang:1.18

WORKDIR /app

COPY . /app

RUN rm go.mod 

RUN rm go.sum

RUN go mod init go-webapp-sample

RUN go mod tidy

#RUN go mod download

RUN go build -o /go-webapp-sample

EXPOSE 8080

CMD ["/go-webapp-sample"]