FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    bash \
    dialog \
    figlet \
    && rm -rf /var/lib/apt/lists/*

COPY tictactoe /usr/local/bin/tictactoe
RUN chmod +x /usr/local/bin/tictactoe

CMD ["tictactoe"]
