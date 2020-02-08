#!/bin/bash

jmeter -n -t sample.jmx -l Results/sample-results.jtl

cat Results/sample-results.jtl

curl -X POST -d "$HOSTNAME" $1

sleep 10
