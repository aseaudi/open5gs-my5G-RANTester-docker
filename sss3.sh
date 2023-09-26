#!/bin/bash
set -x
for i in {1..4}
do
  docker run -d -v ./config/tester.yaml:/workspace/my5G-RANTester/config/config.yml --privileged --restart on-failure my5g:msin-offset ./app load-test -n 20 -g 5000
  sleep 7200
done
