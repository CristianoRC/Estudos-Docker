#!/bin/bash
docker build . --tag temp && docker run --rm -v "$(pwd)"/dados:/test/ temp