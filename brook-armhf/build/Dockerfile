FROM alpine

WORKDIR /

ENV PASSWORD=123456

RUN apk update && apk add ca-certificates wget && update-ca-certificates && apk add openssl

ADD ./brook_linux_arm7 /
ADD ./docker-entrypoint.sh /

RUN mv brook_linux_arm7 brook && \
	chmod +x brook && \
	chmod +x docker-entrypoint.sh && \
	mv brook /bin

CMD ["/docker-entrypoint.sh"]