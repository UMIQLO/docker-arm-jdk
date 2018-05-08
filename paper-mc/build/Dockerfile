FROM umiqlo/arm-jdk8

WORKDIR /opt/paper-mc

ENV BUILD_VERSION="latest"
ENV MIN_RAM="512"
ENV MAX_RAM="1008"

ADD mc_build_env .
ADD mc_cron_backup .

RUN chmod +x mc_build_env
RUN chmod +x mc_cron_backup

CMD ["./mc_build_env"]