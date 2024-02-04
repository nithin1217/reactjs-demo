#!/bin/bash

docker build --no-cache -t nithin2023/reactjs:latest .
#docker build . -t reactjs-demo

docker push nithin2023/reactjs:latest
