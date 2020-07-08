#!/bin/bash

sudo ln -sf /proc/1/fd/1 ./oai.txt

sleep 5s

sudo -E ./targets/bin/lte-softmodem.Rel14 -O ./ci-scripts/conf_files/rcc.band7.tm1.if4p5.lo.25PRB.usrpb210.conf> ./oai.txt 2>&1 &

exit 0

