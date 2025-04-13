FROM maven:3.9-eclipse-temurin-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package

# Stage 2: Deploy to Tomcat
FROM tomcat:10-jdk17-corretto
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war
