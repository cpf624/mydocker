#!/bin/bash
# Author:   jhat
# Email:    cpf624@126.com
# Date:     2015-12-17
# Describe:

export TOMCAT_FILE=apache-tomcat-8.0.30.tar.gz

export TOMCAT_BASE=/opt/apache/tomcat
export TOMCAT_PATH=$TOMCAT_BASE/apache-tomcat-8.0.30
export TOMCAT_HOME=$TOMCAT_BASE/tomcat8

export IMAGE_NAME="xhome/tomcat"
export IMAGE_TAG="$IMAGE_NAME:latest"

docker build --rm --build-arg TOMCAT_FILE="${TOMCAT_FILE}" --build-arg TOMCAT_BASE="${TOMCAT_BASE}" \
    --build-arg TOMCAT_PATH="$TOMCAT_PATH" --build-arg TOMCAT_HOME="${TOMCAT_HOME}" -t="${IMAGE_TAG}" .
