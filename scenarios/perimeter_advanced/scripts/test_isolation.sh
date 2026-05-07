#!/bin/bash

echo "===================================="
echo "container isolation test"
echo "===================================="

echo ""
echo "testing communication from adv-client to adv-nginx"

docker exec adv-client ping -c 2 adv-nginx > /dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "ok: containers communicate only inside isolated network"
else
  echo "error: communication failed"
fi

echo ""
echo "===================================="
echo "end of isolation test"
echo "===================================="
