FROM openjdk:8-jdk-slim
ARG JAR_FILE
COPY ${JAR_FILE} ${JAR_FILE}

ENV JAR_FILE=${JAR_FILE}
ENV SERVICE_PORT=9090

VOLUME /logs

EXPOSE ${SERVICE_PORT}

ENTRYPOINT "java" "-Dserver.port=$SERVICE_PORT" "-jar" "/$JAR_FILE"