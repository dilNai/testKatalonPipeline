#!/bin/bash

rm -rfv ./reports/testCheck
mkdir -p .reports/testCheck

#docker build --pull --no-cache -t katalonstudio/katalon .

docker build -t dil_test_image .

echo "docker build completed"

echo "katalon test started"

docker run -v "$(pwd)":/katalon/katalon/source  --name dil_katalon_container dil_test_image katalonc.sh \
    -projectPath='/katalon/katalon/source/test.prj' \
    -browserType=Chrome \
    -retry=0 \
    -statusDelay=15 \
    -testSuitePath='Test Suites/TS_RegressionTest'
    -apiKey=a8959e4a-ed64-4c9b-ae5e-34dddea0fbd0
    
 echo "katalon test completed"
 
 docker cp dil_katalon_container:/katalon/katalon/source/Reports/ ./reports/testCheck
 
 docker container rm --force dil_katalon_container || true
 docker image rm --force dil_test_image || true