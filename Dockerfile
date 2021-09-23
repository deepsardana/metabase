FROM ubuntu:18.04
EXPOSE 3000
RUN apt-get update && apt-get upgrade -y
RUN apt-get install default-jre -y
RUN apt-get install wget -y 
RUN wget http://downloads.metabase.com/v0.34.1/metabase.jar
ENTRYPOINT ["java","jar","metabase.jar"]
