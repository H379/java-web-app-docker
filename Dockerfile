FROM ubuntu
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN apt-get update -y && apt-get install wget -y
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.73/bin/apache-tomcat-9.0.73.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.73/* /opt/tomcat/.
RUN apt install openjdk-8-jre-headless -y

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
