FROM debian:bullseye

RUN apt update
# segun lo testeado no hay problemas con usar java17 en dado caso cambiar a java8/7
RUN apt install default-jre -y

RUN apt install curl -y

RUN mkdir serverfolder

RUN cd serverfolder

RUN curl https://api.modpacks.ch/public/modpack/25/123/server/linux --output serverinstall_25_123

RUN chmod +x serverinstall_25_123 -v

RUN  ./serverinstall_25_123

RUN echo

RUN echo

RUN echo

RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD sh start.sh
