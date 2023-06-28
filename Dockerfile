# Use the base image with Maven and Java
FROM maven:3.9.0-jdk-11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the project files to the container
COPY . .

# Build the Maven project
RUN mvn clean install

# Set the command to run the application
CMD ["java", "-cp", "target/classes", "com.mycompany.app.app"]
