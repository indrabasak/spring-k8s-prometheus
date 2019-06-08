FROM openjdk:8-jre

MAINTAINER Indra Basak <indra.basak1@gmail.comr>

ARG JAR_FILE
ADD target/${JAR_FILE} /usr/local/example/bin/app.jar
RUN sh -c 'touch /usr/local/example/bin/app.jar'

ENV JAVA_OPTS=""
ENTRYPOINT ["java", "-jar","/usr/local/example/bin/app.jar"]

