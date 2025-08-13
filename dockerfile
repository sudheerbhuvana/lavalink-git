FROM openjdk:22-jdk-slim

WORKDIR /app

COPY . .

# Build Lavalink (Gradle wrapper)
RUN ./gradlew build --no-daemon

WORKDIR /app/LavalinkServer

COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "build/libs/Lavalink.jar"]
