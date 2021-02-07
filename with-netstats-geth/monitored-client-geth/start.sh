#!/bin/sh
set -e
cd /root/eth-net-intelligence-api
perl -pi -e "s/XXX/$(hostname)/g" app.json
/usr/bin/pm2 start ./app.json
sleep 3
geth --datadir /ethereum init /root/genesis.json
cp /root/UTC--2021-02-07T12-01-55.834145387Z--5d0fd9faf0bd0e1fab538a82c2d0a002b87ea0e1 /ethereum/keystore
geth $@

