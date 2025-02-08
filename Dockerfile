FROM eclipse-temurin:21-jre-jammy
WORKDIR /app
COPY build/libs/play-github-action-*.jar app.jar
ENTRYPOINT  ["java", "-jar", "/app.jar"]