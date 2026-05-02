FROM alpine:3.20

RUN apk add --no-cache 3proxy

COPY 3proxy.cfg /etc/3proxy/3proxy.cfg
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 1080

CMD ["/start.sh"]
