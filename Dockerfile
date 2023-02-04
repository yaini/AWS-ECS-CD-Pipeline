FROM adoptopenjdk/openjdk11:alpine-jre

RUN apt-get update && apt-get -y install sudo

ARG JAR_FILE="build/libs/aws-ecs-cd-pipeline-*.jar"

COPY ${JAR_FILE} app.jar

ENV	PROFILE dev

EXPOSE 8080

ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILE}", "-jar","/app.jar"]