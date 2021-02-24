#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
cat /github/workspace/app/build/reports/lint-results.xml
