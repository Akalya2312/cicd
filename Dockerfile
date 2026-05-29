FROM eclipse-temurin:17-jdk-alpine

COPY target/cicd-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]
