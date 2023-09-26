#!/bin/bash
set -x
for i in {1..4}
do
  docker run -d -v ./config/tester.yaml:/workspace/my5G-RANTester/config/config.yml --privileged --restart on-failure my5g:pdu-release ./app load-test -n 20 -g 1000
  sleep 3600
done
