## install kind
```bash
# install go
$ brew install go

# verify go installation
$ go version
go version go1.24.3 darwin/arm64

# install kind
# kind link: https://kind.sigs.k8s.io/docs/user/quick-start/ 
go install sigs.k8s.io/kind@v0.29.0

# verify kind installation
$ kind version
kind v0.29.0 go1.24.3 darwin/arm64
```

If you can not find kind command, you may need to add `$(go env GOPATH)/bin` to your `PATH` environment variable.
You can do this by adding the following line to your shell configuration file (e.g., `~/.bashrc`, `~/.zshrc`):

```bash
export PATH=$PATH:$(go env GOPATH)/bin
```

## create kind cluster
```bash
# check kubectl clinet version
$ kubectl version --client
Client Version: v1.33.1
Kustomize Version: v5.6.0

# create a kind cluster
# It is better to use the same version as kubectl client
$ kind create cluster --image=kindest/node:v1.33.1
```
