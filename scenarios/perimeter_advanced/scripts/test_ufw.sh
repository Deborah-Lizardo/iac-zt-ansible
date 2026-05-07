#!/bin/bash

echo "===================================="
echo "ufw firewall status test"
echo "===================================="

echo ""
echo "checking ufw status"
sudo ufw status verbose

echo ""
echo "verifying if ufw is active"
if sudo ufw status | grep -q "active"; then
  echo "ok: ufw is active"
else
  echo "error: ufw is not active"
fi

echo ""
echo "===================================="
echo "end of ufw test"
echo "===================================="
