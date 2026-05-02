FROM ubuntu:24.04

RUN apt-get update && apt-get install -y 3proxy && rm -rf /var/lib/apt/lists/*

COPY 3proxy.cfg /etc/3proxy/3proxy.cfg
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 1080

CMD ["/start.sh"]
