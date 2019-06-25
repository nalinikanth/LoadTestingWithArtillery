#!/usr/bin/env bash
set -e

duration=$1
rate=$2


mkdir -p reports

DURATION=${duration} ARRIVAL_RATE=${rate}
sleep 1

DURATION=${duration} ARRIVAL_RATE=${rate} \
node_modules/.bin/artillery run -o reports/report.$(date +%F_%R).json test.yml

echo "-------"