#!/bin/bash

docker pull nithin2023/reactprojectprod-1:prod

docker run -d --name node-todo-app-container1 -p 80:3000 nithin2023/reactprojectprod-1:prod
