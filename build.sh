#!/bin/bash

docker build -t nithin2023/reactjs-demo:latest .


if [ $? -eq 0 ]; then
  echo "Docker image build successful: nithin2023/reactjs-demo:latest"
else
  echo "Docker image build failed"
  exit 1
fi
