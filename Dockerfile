FROM tomcat:9.0.37-jdk14-openjdk
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./*.war /usr/local/tomcat/webapps/ROOT.war
#COPY server.xml /usr/local/tomcat/conf
EXPOSE 8080
CMD ["catalina.sh","run"]