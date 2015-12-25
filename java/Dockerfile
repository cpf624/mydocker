FROM debian:latest
MAINTAINER Jhat<cpf624@126.com>
LABEL vendor="XHome"
LABEL version="1.0.0"
LABEL description="Sun Java 8"

ARG JAVA_FILE
ARG JAVA_PATH
ARG JAVA_BASE
ARG JAVA_HOME

ENV JAVA_HOME=${JAVA_HOME}
ENV CLASSPATH=.:${JAVA_HOME}/lib

ADD ${JAVA_FILE} ${JAVA_BASE}
RUN ln -s ${JAVA_PATH} ${JAVA_HOME} && echo -e "\nexport PATH=$PATH:$JAVA_HOME/bin\nexport CLASSPATH=$CLASSPATH" >> /etc/bashrc
