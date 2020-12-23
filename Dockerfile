FROM golang:latest
WORKDIR $GOPATH/src/github.com/kanhaiya15/go-github-actions
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 8080
CMD ["go-github-actions"]