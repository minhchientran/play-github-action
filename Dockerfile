FROM openjdk:21-jdk-slim
WORKDIR /app
COPY . .
RUN chmod +x gradlew
RUN --mount=type=cache,target=/app/.gradle ./gradlew build --no-daemon
EXPOSE 9000
RUN ["java", "-jar", "/app/build/libs/play-github-action-0.0.1-SNAPSHOT.jar"]