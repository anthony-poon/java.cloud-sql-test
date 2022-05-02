FROM openjdk:8-jre-alpine

RUN apk update && \
    apk add fontconfig ttf-dejavu

ARG JAR_FILE=target/cloud-sql-test.jar

WORKDIR /workspace
VOLUME /tmp
COPY ${JAR_FILE} ./cloud-sql-test.jar

ENTRYPOINT ["java","-jar","./cloud-sql-test.jar"]