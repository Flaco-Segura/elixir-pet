FROM alpine:3

ARG ASDF_VERSION=0.14.0

RUN apk --no-cache upgrade && \
    apk add --update alpine-sdk && \
    apk add --no-cache git curl bash zsh bison perl perl-dev ncurses-dev libxslt

RUN adduser -s /bin/bash -D -u 1000 asdf

USER asdf

RUN mkdir -p $HOME/.asdf && \
    git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v${ASDF_VERSION}

COPY --chown=asdf:asdf .tool-versions /home/asdf/.tool-versions

ENV LANG=C.UTF-8 PATH=/home/asdf/.asdf/bin:/home/asdf/.asdf/shims:$PATH
ENV KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac --without-wx --without-docs"

WORKDIR /home/asdf

RUN asdf plugin-add erlang && \
    asdf plugin-add elixir

ENTRYPOINT ["/bin/bash", "-c"]
