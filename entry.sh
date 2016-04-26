#!/bin/sh
dt=$(date +%Y%m%d)
./consul-backup -i $CONSUL_ENDPOINT -t $CONSUL_TOKEN -a -b /backup/acl.bak.$dt /backup/kv.bak.$dt
sleep 25h
./entry.sh
