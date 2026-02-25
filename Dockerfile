FROM tomcat
RUN apt update && apt install -y openjdk-17-jdk maven
WORKDIR /app
COPY src/ ./src/
COPY pom.xml ./
RUN mvn clean package
RUN mv target/*.war $CATALINA_HOME/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
