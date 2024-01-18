#!/bin/bash


docker run -p 80:80 nithin2023/reactjs:dev

if [ $? -eq 0 ]; then
  echo "Docker container started successfully on the server"
else
  echo "Failed to start Docker container on the server"
  exit 1
fi
