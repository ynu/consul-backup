#!/bin/sh
dt=$(date +%Y%m%d)
./consul-backup -i $CONSUL_ENDPOINT -t $CONSUL_TOKEN -a -b acl.bak.$dt kv.bak.$dt
sleep 25h
./entry.sh
