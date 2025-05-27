## run command
Need docker buildkit to run this command.

```bash
# build the docker image
$ docker build ./ --tag go-heredoc

# run the docker image
$ docker run -it --rm go-heredoc:latest
```
