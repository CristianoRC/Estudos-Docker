#!/bin/bash
docker build . --tag temp 
docker run --rm -e environment=prod temp