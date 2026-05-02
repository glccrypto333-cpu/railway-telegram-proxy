FROM ubuntu:24.04

RUN apt-get update && apt-get install -y git build-essential ca-certificates && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/rofl0r/microsocks.git /tmp/microsocks \
    && cd /tmp/microsocks \
    && make \
    && cp microsocks /usr/local/bin/microsocks \
    && rm -rf /tmp/microsocks

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 1080

CMD ["/start.sh"]
