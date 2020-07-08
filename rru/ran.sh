#!/bin/bash

sudo ln -sf /proc/1/fd/1 ./oai.txt

sleep 5s

sudo -E ./targets/bin/lte-softmodem.Rel14 -O ./ci-scripts/conf_files/rru.fdd.band7.conf> ./oai.txt 2>&1 &

exit 0

