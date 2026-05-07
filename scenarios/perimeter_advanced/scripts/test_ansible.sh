#!/bin/bash

echo "===================================="
echo "ansible deployment validation"
echo "===================================="

echo ""
echo "checking running containers"
docker ps

echo ""
echo "checking firewall configuration"
sudo ufw status verbose

echo ""
echo "verifying if rules are applied"
sudo ufw status numbered

echo ""
echo "ok: basic ansible configuration validation completed"

echo ""
echo "===================================="
echo "end of ansible test"
echo "===================================="
