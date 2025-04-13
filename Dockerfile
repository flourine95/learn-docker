FROM tomcat:10-jdk17-corretto

COPY ./target/demo-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
