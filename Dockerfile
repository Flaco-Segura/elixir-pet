FROM elixir:alpine
    
RUN apk add --update --no-cache curl
RUN apk add --no-cache build-base git

WORKDIR /home/

# COPY examples /home/examples

ENTRYPOINT ["tail", "-f", "/dev/null"]
