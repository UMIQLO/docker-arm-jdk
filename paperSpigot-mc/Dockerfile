FROM umiqlo/docker-arm-jdk

WORKDIR /opt/paperSpigot-mc

CMD ["/bin/bash"]

RUN wget https://ci.destroystokyo.com/job/Paper/lastSuccessfulBuild/artifact/paperclip.jar \
	&& echo "eula=true" > eula.txt \
	&& echo "cd /opt/spigot-mc && java -Xms512M -Xmx1008M -jar /opt/spigot-mc/paperclip.jar" >> minecraft.sh \
	&& cat minecraft.sh \
	&& chmod +x minecraft.sh

CMD ["./minecraft.sh"] 

EXPOSE 25565
EXPOSE 25575