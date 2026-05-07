#!/bin/bash

echo "===================================="
echo "access control test"
echo "===================================="

echo ""
echo "test 1 - checking allowed service on port 8084"
curl -s -o /dev/null -w "http code: %{http_code}\n" http://localhost:8084

echo ""
echo "test 2 - checking blocked service on port 8083"
curl -s --connect-timeout 2 http://localhost:8083 > /dev/null 2>&1

if [ $? -ne 0 ]; then
  echo "ok: port 8083 is not accessible (blocked)"
else
  echo "error: port 8083 is accessible (security failure)"
fi

echo ""
echo "===================================="
echo "end of access test"
echo "===================================="
