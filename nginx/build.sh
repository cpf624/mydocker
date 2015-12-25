#!/bin/bash
# Author:   jhat
# Email:    cpf624@126.com
# Date:     2015-12-17
# Describe:

export IMAGE_NAME="xhome/nginx"
export IMAGE_TAG="$IMAGE_NAME:latest"


docker build --rm -t="${IMAGE_TAG}" .
