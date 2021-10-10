#!/bin/bash

rm -rfv ./reports/testCheck
mkdir -p .reports/testCheck

//docker build --pull --no-cache -t katalonstudio/katalon .

docker build

echo "dcoker build completed"

echo "katalon test started"

docker run -v "$(pwd)":/katalon/katalon/source katalonstudio/katalon  --name dil_katalon katalonstudio/katalon katalon.sh \
    -projectPath='/katalon/katalon/source/test.prj \
    -browserType=Chrome \
    -retry=0 \
    -statusDelay=15 \
    -testSuitePath='/katalon/katalon/source/Test Suites/TS_RegressionTest
    
 echo "katalon test completed"
 
 docker cp dil_katalon:/katalon/katalon/source/Reports/ ./Reports/test
 
 docker container rm --force dil_katalon || true
 docker image rm --force dil_test_image || true