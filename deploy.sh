#!/bin/bash

docker pull nithin2023/reactjs:latest1

#docker run -d --name container2 -p 80:3000 reactjs-demo

docker run -d --name dockercontainerdev03 -p 90:3000 nithin2023/reactjs:latest1
