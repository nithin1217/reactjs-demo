#!/bin/bash

docker pull nithin2023/reactjs:latest

#docker run -d --name container2 -p 80:3000 reactjs-demo

docker run -d --name containerdev01 -p 80:3000 nithin2023/reactjs:latest
