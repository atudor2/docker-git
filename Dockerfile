FROM alpine

RUN apk fix && \
    apk --no-cache --update add git git-lfs gpg less openssh patch perl github-cli && \
    git lfs install

VOLUME /git
WORKDIR /git

ENTRYPOINT ["gh"]
CMD ["--help"]
