#!/bin/bash

docker build -t nithin2023/reactjs:dev .


if [ $? -eq 0 ]; then
  echo "Docker image build successful: nithin2023/reactjs:dev"
else
  echo "Docker image build failed"
  exit 1
fi
