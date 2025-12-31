
# Multi-stage build for Java web application

# Stage 1: Build the application
FROM maven:3.9-eclipse-temurin-8 AS build

# Set working directory
WORKDIR /app

# Copy pom.xml and download dependencies (cached if pom.xml unchanged)
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source code
COPY src ./src

# Build the WAR file
RUN mvn clean package -DskipTests

# Stage 2: Deploy to Tomcat
FROM tomcat:9.0-jdk8

# Remove default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file from build stage to Tomcat webapps
COPY --from=build /app/target/my-app.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
