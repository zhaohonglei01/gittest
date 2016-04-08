FROM ubuntu:14.04
MAINTAINER zhaojinzhi@cienet.com.cn
COPY tools/ /root/tools
RUN echo "JAVA_HOME=~/tools/jdk1.8.0_73" >> ~/.bashrc
RUN cd ~/tools; cp jenkins.war ~/tools/apache-tomcat-9.0.0.M3/webapps
RUN cd ~/tools/apache-tomcat-9.0.0.M3/bin;sh startup.sh
EXPOSE 8080

