FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/UserMS111-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 8200
ENV JAVA_OPTS=""
RUN sh -c "touch UserMS111-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "UserMS111-0.0.1-SNAPSHOT.jar" ]
# docker file to create docker image for ordermanagement
