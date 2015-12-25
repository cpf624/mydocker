FROM xhome/java:latest
MAINTAINER Jhat<cpf624@126.com>
LABEL vendor="XHome"
LABEL version="1.0.0"
LABEL description="Apache Tomcat 8"

ARG TOMCAT_FILE
ARG TOMCAT_PATH
ARG TOMCAT_BASE
ARG TOMCAT_HOME

ARG TOMCAT_WEBAPPS=${TOMCAT_HOME}/webapps

ENV TOMCAT_HOME=${TOMCAT_HOME}
ENV TOMCAT_WEBAPPS=${TOMCAT_WEBAPPS}
ENV CATALINA_HOME=${TOMCAT_HOME}

ADD ${TOMCAT_FILE} ${TOMCAT_BASE}

RUN set -x \
    && ln -s ${TOMCAT_PATH} ${TOMCAT_HOME} \
    && rm -rf ${TOMCAT_HOME}/bin/*.bat ${TOMCAT_HOME}/*.txt ${TOMCAT_HOME}/LICENSE ${TOMCAT_HOME}/NOTICE ${TOMCAT_HOME}/RELEASE-NOTES \
    && rm -rf ${TOMCAT_WEBAPPS}/docs ${TOMCAT_WEBAPPS}/examples ${TOMCAT_WEBAPPS}/host-manager ${TOMCAT_WEBAPPS}/manager ${TOMCAT_WEBAPPS}/ROOT \
    && useradd -r -m -c "Tomcat" -d ${TOMCAT_HOME} -s /bin/false tomcat && chown -R tomcat:tomcat ${TOMCAT_BASE}

EXPOSE 8080

USER tomcat
WORKDIR ${TOMCAT_HOME}

CMD ${TOMCAT_HOME}/bin/catalina.sh run
