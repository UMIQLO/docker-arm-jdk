FROM umiqlo/arm-jdk8-base

WORKDIR /opt/paper-mc

ENV BUILD_VERSION="latest"
ENV MIN_RAM="512"
ENV MAX_RAM="1008"

ADD init .
ADD cron .

RUN chmod +x init && chmod +x cron

CMD ["./init"]