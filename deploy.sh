#!/bin/bash

docker pull nithin2023/reactprojectprod-1:prod

docker run -d --name containermain1 -p 80:3000 nithin2023/reactprojectprod-1:prod
