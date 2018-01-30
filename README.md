# docker-gitbook

## Usage

### Build a Docker Image

Only if you want to build an image at localhost (especially inside of proxy).

```
docker build -t megane42/gitbook \
       --build-arg http_proxy=${http_proxy} \
       --build-arg HTTP_PROXY=${HTTP_PROXY} \
       --build-arg https_proxy=${https_proxy} \
       --build-arg HTTPS_PROXY=${HTTPS_PROXY} \
       .
```

### Build Document

```
cd /path/to/your/gitbook/root/
docker run --rm -v ${PWD}:/work -w /work megane42/gitbook build
```

### Serve Document

```
cd /path/to/your/gitbook/root/
docker run --init --rm -p 4000:4000 -v ${PWD}:/work -w /work megane42/gitbook serve
```

* Don't forget `--init` , or you can't exit the server by `Ctrl-C`.
  * Node.js app, such as gitbook, ignores SYGTERM when it has PID 1 ([see](https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md#handling-kernel-signals)).

## Why So Old Gitbook?

* For [this bug](https://github.com/GitbookIO/theme-default/issues/28).

## License

* MIT
