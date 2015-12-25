#!/bin/bash
# Author:   jhat
# Email:    cpf624@126.com
# Date:     2015-12-25
# Describe:

export IMAGE_NAME="xhome/mysql"
export IMAGE_TAG="$IMAGE_NAME:latest"

docker build --rm -t="${IMAGE_TAG}" .
