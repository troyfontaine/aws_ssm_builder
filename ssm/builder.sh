#!/bin/sh

SRC_DIR=$GOPATH/src/github.com/aws/amazon-ssm-agent/

apk update && apk add bash vim git make gcc 
mkdir -p $GOPATH/src/github.com/aws/amazon-ssm-agent
git clone https://github.com/aws/amazon-ssm-agent.git $SRC_DIR
cd $SRC_DIR
make build-linux
tar -cvf /ssm/ssm-linux_amd64.tar bin/linux_amd64/*
make clean
make build-darwin
tar -cvf /ssm/ssm-darwin_amd64.tar bin/darwin_amd64/*