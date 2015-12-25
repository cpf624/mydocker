#!/bin/bash
# Author:   jhat
# Email:    cpf624@126.com
# Date:     2015-12-17
# Describe:

export NEXUS_FILE=nexus-2.11.4-01-bundle.tar.gz

export NEXUS_BASE=/opt/sonatype/nexus
export NEXUS_HOME=$NEXUS_BASE/nexus-2.11.4-01
export NEXUS_WORK=$NEXUS_BASE/nexus-work

export IMAGE_NAME="xhome/nexus"
export IMAGE_TAG="$IMAGE_NAME:latest"

docker build --rm --build-arg NEXUS_FILE="${NEXUS_FILE}" --build-arg NEXUS_BASE="${NEXUS_BASE}" \
    --build-arg NEXUS_HOME="$NEXUS_HOME" --build-arg NEXUS_WORK="${NEXUS_WORK}" -t="${IMAGE_TAG}" .
