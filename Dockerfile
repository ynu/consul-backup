FROM golang:1.5

COPY main.go .
RUN go get github.com/hashicorp/consul/api
RUN go get github.com/docopt/docopt-go
RUN go build -o consul-backup main.go

COPY entry.sh .
RUN chmod +x entry.sh

CMD ./entry.sh
