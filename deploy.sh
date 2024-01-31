#!/bin/bash

docker pull nithin2023/reactjs:dev

docker run -d --name node-todo-app-container2 -p 80:3000 nithin2023/reactjs:dev
