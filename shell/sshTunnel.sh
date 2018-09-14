#!/bin/bash
while true;do
RET=`ps ax | grep "ssh -NfR 2222:153.65.107.143:22 George@139.59.241.102" | grep -v "grep"`
if [ "$RET" = "" ]; then
  echo "restart ssh server"
  ssh -NfR 2222:153.65.107.143:22 George@139.59.241.102
fi
sleep 10
done
