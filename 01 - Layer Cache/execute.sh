#!/bin/bash
echo "------------------------"
start_time="$(date -u +%s)"

docker build . --tag temp && docker run --rm temp

end_time="$(date -u +%s)"
elapsed="$(($end_time-$start_time))"
echo "Tempo total: $elapsed segundos"
echo "------------------------"