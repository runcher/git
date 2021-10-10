FROM alpine:latest

LABEL org.opencontainers.image.authors="github.com/silberglanz"
LABEL org.opencontainers.image.source="https://github.com/runcher/git"
LABEL org.opencontainers.image.description="Minimalist image for running Git."

RUN apk add --update git less openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /git
WORKDIR /git

ENTRYPOINT ["/bin/git"]
CMD ["--help"]
