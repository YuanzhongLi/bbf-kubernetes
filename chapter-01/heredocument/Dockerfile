FROM golang:1.21 AS builder
WORKDIR /app

COPY <<-EOF main.go
package main
import (
  "fmt"
)
func main() {
  fmt.Println("Hello, Yukitada!")
}
EOF

ENV CGO_ENABLED=0
RUN <<-EOF
  go mod init hello
  go mod tidy
  go build -o hello main.go
EOF

FROM scratch
COPY --from=builder /app/hello /hello
CMD ["/hello"]
