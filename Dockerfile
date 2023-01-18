FROM debian:latest

ARG RUN_INTERVAL_IN_SECONDS=3600
ENV RUN_INTERVAL_IN_SECONDS $RUN_INTERVAL_IN_SECONDS

WORKDIR /app

COPY run.sh .
RUN chmod +x ./run.sh

RUN apt-get update && \
  apt-get install -y wget mono-runtime libmono-SYSTEM* ca-certificates-mono && \
  rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/zybexXL/MCStats/releases/download/v1.0.5/ZStats.exe

CMD [ "./run.sh" ]
