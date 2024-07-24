FROM elixir

COPY /examples /home/examples

WORKDIR /home

ENTRYPOINT ["/bin/bash", "-c"]
