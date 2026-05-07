#!/bin/bash

echo "===================================="
echo "container isolation test"
echo "===================================="

echo ""
echo "test 1 - checking communication between containers"

SOURCE_CONTAINER="perimeter-web"
TARGET_IP="172.20.0.3"

docker exec $SOURCE_CONTAINER ping -c 2 $TARGET_IP > /dev/null 2>&1

if [ $? -ne 0 ]; then
  echo "ok: containers are isolated"
else
  echo "error: containers can communicate (isolation failure)"
fi

echo ""
echo "===================================="
echo "end of isolation test"
echo "===================================="
