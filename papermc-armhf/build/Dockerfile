FROM umiqlo/jdk-armhf

WORKDIR /opt/paper-mc

ENV BUILD_VERSION="latest"
ENV MIN_RAM="512"
ENV MAX_RAM="1008"

ADD init .

RUN chmod +x init

CMD ["./init"]