# # Stage 1: Build
# FROM maven:3.9-eclipse-temurin-17 AS build
# WORKDIR /app
# COPY src/ ./src/
# COPY pom.xml ./
# RUN mvn clean package

# # Stage 2: Run
# FROM tomcat:10-jdk17
# COPY --from=build /app/target/*.war $CATALINA_HOME/webapps/ROOT.war
# EXPOSE 8080
# CMD ["catalina.sh", "run"]

# Stage 1: Build
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app

COPY pom.xml .
RUN mvn dependency:go-offline

COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Runtime
FROM tomcat:10.1-jdk17-temurin-jammy

COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
