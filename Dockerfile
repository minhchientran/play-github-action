FROM --platform=linux/arm64 eclipse-temurin:21-jdk-ubi9-minimal
COPY play-github-action-*.jar /app/app.jar
ENTRYPOINT  ["java", "-jar", "/app/app.jar"]