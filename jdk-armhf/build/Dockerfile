FROM ubuntu

WORKDIR /opt/java

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
	&& apt-get install wget -y \
	&& wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u172-b11/a58eab1ec242421181065cdc37240b08/jdk-8u172-linux-arm32-vfp-hflt.tar.gz \
	&& tar -zxvf jdk-8u172-linux-arm32-vfp-hflt.tar.gz \
	&& rm -rf jdk-8u172-linux-arm32-vfp-hflt.tar.gz \
	&& update-alternatives --install /usr/bin/java java /opt/java/jdk1.8.0_172/bin/java 1 \
	&& update-alternatives --install /usr/bin/javac javac /opt/java/jdk1.8.0_172/bin/javac 1 \
	&& update-alternatives --config java \
	&& update-alternatives --config javac \
	&& rm -rf \
		/tmp/* \
		/var/lib/apt/lists/* \
		/var/tmp/*
CMD ["/bin/bash"]