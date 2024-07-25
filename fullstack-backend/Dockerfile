# Etape de construction de l'application
FROM maven:3.8.6-openjdk-11 AS build
WORKDIR /app
COPY pom.xml ./
RUN mvn dependency:go-offline
COPY . .
RUN mvn -X clean package -DskipTests

# Etape pour exécuter l'application :
FROM openjdk:11-jdk-slim
WORKDIR /app
COPY --from=build /app/target/*.jar /app/app.jar
EXPOSE 8080
CMD ["java", "-jar", "/app/app.jar"]
