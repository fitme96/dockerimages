FROM centos:latest
ADD  ./jdk-8u211-linux-x64.tar.gz  /usr/local/
RUN  ln -sv /usr/local/jdk1.8.0_211  /usr/local/jdk
ENV JAVA_HOME=/usr/local/jdk
ENV CLASSPATH=$JAVA_HOME/bin
ENV PATH=$PATH:$JAVA_HOME/bin
CMD ["/bin/bash"]
