#!/bin/bash
echo Building image
docker image build -t monitoring-service .
docker run -d -p 51000:3001 --mount type=volume,source=hotburger-logs,target=/app/logs -it project2
