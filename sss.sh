#!/bin/bash
set -x
for i in {1..10}
do
  docker run -d -v ./config/tester.yaml:/workspace/my5G-RANTester/config/config.yml --privileged --restart on-failure my5g:msin-offset ./app load-test -n 25 -g 10000
  sleep 3600
done
