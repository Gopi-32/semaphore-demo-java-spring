FROM openjdk:17-jdk-slim
ARG ENVIRONMENT
ENV ENVIRONMENT ${ENVIRONMENT}
COPY target/*.jar app.jar
ENTRYPOINT ["java","-Dspring.profiles.active=${ENVIRONMENT}", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
