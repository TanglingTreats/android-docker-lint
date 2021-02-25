#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
lint_path=/github/workspace/app/build/reports/lint-results.xml
cat $lint_path
