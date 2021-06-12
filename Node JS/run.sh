#!/bin/bash

docker build . --tag temp 
docker run --rm  -p 3000:3000 temp