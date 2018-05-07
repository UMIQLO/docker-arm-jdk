FROM umiqlo/arm-jdk8

WORKDIR /opt/paper-spigot-mc

RUN wget https://ci.destroystokyo.com/job/Paper/lastSuccessfulBuild/artifact/paperclip.jar \
	&& echo "eula=true" > eula.txt \
	&& echo "cd /opt/paper-spigot-mc && java -Xms512M -Xmx1008M -jar paperclip.jar" >> minecraft.sh \
	&& cat minecraft.sh \
	&& chmod +x minecraft.sh

CMD ["sh", "minecraft.sh"] 

EXPOSE 25565
EXPOSE 25575