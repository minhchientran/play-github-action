FROM --platform=linux/arm64 eclipse-temurin:21-jdk-ubi9-minimal
WORKDIR /app
COPY play-github-action-*.jar app.jar
ENTRYPOINT  ["java", "-jar", "/app.jar"]