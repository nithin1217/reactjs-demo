#!/bin/bash

docker pull nithin2023/reactprojectprod-1:latest

docker run -d --name dockercontainermain01 -p 80:3000 nithin2023/reactprojectprod-1:latest
