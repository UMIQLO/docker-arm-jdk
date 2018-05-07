FROM umiqlo/arm-jdk8

ENV FOLDER_NAME="paper-spigot-mc" MC_SCRIPT_NAME="minecraft_start.sh" STARTUP_SCRIPT="docker_mc_start"

WORKDIR /opt/$FOLDER_NAME
WORKDIR /opt/mcTmp
EXPOSE 25565
EXPOSE 25575

RUN wget https://ci.destroystokyo.com/job/Paper/lastSuccessfulBuild/artifact/paperclip.jar \
	&& echo "eula=true" > eula.txt \
	&& echo "#!/bin/bash" >> $MC_SCRIPT_NAME \
	&& echo "cd /opt/$FOLDER_NAME && java -Xms512M -Xmx1008M -jar paperclip.jar" >> $MC_SCRIPT_NAME \
	&& cat $MC_SCRIPT_NAME \
	&& chmod +x $MC_SCRIPT_NAME
	
RUN echo "#!/bin/bash" > $STARTUP_SCRIPT \
	&& echo "cp -v * /opt/$FOLDER_NAME/" >> $STARTUP_SCRIPT \
	&& echo "screen -dm -S minecraft /opt/$FOLDER_NAME/$MC_SCRIPT_NAME" >> $STARTUP_SCRIPT \
	#&& echo "sh /opt/$FOLDER_NAME/$MC_SCRIPT_NAME" >> $STARTUP_SCRIPT \
	&& echo "while :; do" >> $STARTUP_SCRIPT \
	&& echo "sleep 300" >> $STARTUP_SCRIPT \
	&& echo "done" >> $STARTUP_SCRIPT \
	&& cat $STARTUP_SCRIPT \
	&& chmod +x $STARTUP_SCRIPT

CMD ["./docker_mc_start"]