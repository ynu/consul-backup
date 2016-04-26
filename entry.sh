#!/bin/sh
dt=$(date +%Y%m%d%H%M)
./consul-backup -i 10.0.2.15:8500 -t 6952dcef-1e61-86c6-0abd-dd0b2b42a832 -a -b acl.bak.$dt kv.bak.$dt
sleep 1m
./entry.sh
