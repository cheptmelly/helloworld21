# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "ccharlene.m@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps
