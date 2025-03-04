# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the Maven project files to the container
COPY . ./

# Build the application
RUN ./mvnw clean package

# Expose the application port (if applicable, change as needed)
EXPOSE 8080

# Set the entry point to run the shaded JAR
CMD ["java", "-jar", "target/javaparser-maven-sample-1.0-SNAPSHOT-shaded.jar"]
