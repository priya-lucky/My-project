# Use official Java runtime as base image
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy gradle files
COPY gradlew .
COPY gradle gradle
COPY build.gradle settings.gradle ./
COPY app app

# Give execute permission to gradlew
RUN chmod +x ./gradlew

# Build the application
RUN ./gradlew build

# Expose port (if needed)
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app/build/libs/app.jar"]
