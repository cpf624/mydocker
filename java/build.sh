#!/bin/bash
# Author:   jhat
# Email:    cpf624@126.com
# Date:     2015-12-17
# Describe:

export JAVA_FILE=server-jre-8u66-linux-x64.gz

export JAVA_BASE=/var/lib/java
export JAVA_PATH=$JAVA_BASE/jdk1.8.0_66
export JAVA_HOME=$JAVA_BASE/jdk

export IMAGE_NAME="xhome/java"
export IMAGE_TAG="$IMAGE_NAME:latest"


docker build --rm --build-arg JAVA_FILE="${JAVA_FILE}" --build-arg JAVA_BASE="${JAVA_BASE}" \
    --build-arg JAVA_PATH="$JAVA_PATH" --build-arg JAVA_HOME="${JAVA_HOME}" -t="${IMAGE_TAG}" .
