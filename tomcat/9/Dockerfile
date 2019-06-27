FROM fitme/jdk:8u211
ENV TOMCAT_VERSION 9.0.21
ADD apache-tomcat-9.0.21.tar.gz /usr/local/
RUN ln -sv /usr/local/apache-tomcat-9.0.21 /usr/local/tomcat
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $PATH:$CATALINA_HOME/lib:$CATALINA_HOME/bin
WORKDIR $CATALINA_HOME
EXPOSE 8080
CMD ["catalina.sh","run"]
