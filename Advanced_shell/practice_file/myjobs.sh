#!/bin/bash
## This script simulates a long-running task
echo "Starting long task..."
for i in {1..10}; do
  echo "Processing step $i..."
  sleep 3
done
echo "Long task completed."