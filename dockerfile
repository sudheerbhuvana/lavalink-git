FROM eclipse-temurin:22-jdk

WORKDIR /app

COPY Lavalink.jar .
COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
