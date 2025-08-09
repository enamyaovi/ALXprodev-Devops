#!/bin/bash
## This script simulates another task
echo "Starting another task..."
for i in {1..20}; do
  echo "Another task - step $i..."
  sleep 5
done
echo "Another task completed."
