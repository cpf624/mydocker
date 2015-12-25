FROM xhome/java:latest
MAINTAINER Jhat<cpf624@126.com>
LABEL vendor="XHome"
LABEL version="1.0.0"
LABEL description="Nexus 2.11"

ARG NEXUS_FILE
ARG NEXUS_BASE
ARG NEXUS_HOME
ARG NEXUS_WORK

ENV NEXUS_HOME=${NEXUS_HOME}
ENV NEXUS_WORK=${NEXUS_WORK}
ENV PLEXUS_NEXUS_WORK=${NEXUS_WORK}

ADD ${NEXUS_FILE} ${NEXUS_BASE}

RUN useradd -r -m -c "Nexus" -d ${NEXUS_WORK} -s /bin/false nexus \
    && chown -R nexus:nexus ${NEXUS_BASE} \
    && rm -rf ${NEXUS_BASE}/sonatype-work

VOLUME ${NEXUS_WORK}

EXPOSE 8081

USER nexus
WORKDIR ${NEXUS_BASE}

CMD source /etc/bashrc && ${NEXUS_HOME}/bin/nexus console
