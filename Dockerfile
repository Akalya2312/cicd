FROM eclipse-temurin:17-jdk

# Copy jar file
COPY target/cicd-0.0.1-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
