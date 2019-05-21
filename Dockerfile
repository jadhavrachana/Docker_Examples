FROM openjdk
MAINTAINER rachana@gmail.com
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN cd /usr/local/src
RUN curl http://www-us.apache.org/dist/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz
RUN tar -xvfz apache-maven-3.5.4-bin.tar.gz 
RUN mkdir /usr/local/src/apache-maven/
RUN mv apache-maven-3.5.4/ apache-maven/
ENV export M2_HOME=/usr/local/src/apache-maven
ENV export PATH=${M2_HOME}/bin:${PATH}
RUN  mvn --version
RUN mvn package

