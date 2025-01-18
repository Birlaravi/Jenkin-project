# Use the official OpenJDK base image
FROM openjdk:17-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory into the container
COPY . .

# Compile all .java files in the project (handles subdirectories too)
RUN javac -d out $(find . -name "*.java")

# Package compiled files into a .jar file
RUN jar cf app.jar -C out .

# Command to run the application (adjust "Main" to your main class name)
CMD ["java", "-cp", "app.jar", "Main"]

