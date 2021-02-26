#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
lint_path=/github/workspace/app/build/reports/lint-results.html
cat $lint_path > lint-results.html
sh -c "sudo chmod -R 755 ./lint-results.html"
sh -c "chown -R ./lint-results.html"
