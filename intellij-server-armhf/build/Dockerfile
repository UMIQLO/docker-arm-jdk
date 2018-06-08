FROM alpine

WORKDIR /

RUN apk update && apk add ca-certificates wget && update-ca-certificates && apk add openssl

ADD ./IntelliJLicenseServer /

RUN chmod +x IntelliJLicenseServer

CMD ["/IntelliJLicenseServer"]