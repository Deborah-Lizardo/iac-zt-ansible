#!/bin/bash

echo "=== Testing Perimeter Intermediate Scenario ==="

echo "[1] Checking HTTP access (port 8082)..."
curl -I http://localhost:8082

echo ""
echo "[2] Scanning port with nmap..."
nmap -p 8082 localhost

echo ""
echo "[3] Checking firewall status..."
sudo ufw status

echo ""
echo "[4] Checking running container..."
sudo docker ps | grep perimeter-intermediate-web
