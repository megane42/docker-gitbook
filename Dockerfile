FROM node:6.12-alpine
LABEL maintainer "megane42"

ARG http_proxy
ARG https_proxy
ARG HTTP_PROXY
ARG HTTPS_PROXY

RUN npm install -g gitbook-cli
RUN gitbook fetch 2.6.7
EXPOSE 4000

ENTRYPOINT ["gitbook"]
CMD ["--help"]