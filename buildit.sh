#!/bin/bash

docker run -it -v "$(PWD)"/ssm:/ssm --rm golang:1.8-alpine /ssm/builder.sh