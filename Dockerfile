FROM maven:3.9.9-eclipse-temurin-21-alpine AS build
WORKDIR /app
COPY settings.xml /root/.m2/settings.xml
COPY tools/checkstyle.xml tools/checkstyle.xml
COPY pom.xml .
COPY src ./src
RUN mvn clean package

FROM openjdk:21-jdk
WORKDIR /app
COPY --from=build /app/target/*.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]