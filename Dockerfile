FROM java
MAINTAINER darren
RUN apt-get install -y wget

RUN cd /

RUN wget http://ftp.cuhk.edu.hk/pub/packages/apache.org/tomcat/tomcat-7/v7.0.104/bin/apache-tomcat-7.0.104.tar.gz

RUN tar zxvf apache-tomcat-7.0.104.tar.gz

CMD ["/apache-tomcat-7.0.104/bin/catalina.sh", "run"]

EXPOSE 8080
