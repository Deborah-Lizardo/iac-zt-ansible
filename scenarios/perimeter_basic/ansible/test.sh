#!/bin/bash

echo "=== Testing Perimeter Basic Scenario ==="

echo "[1] Checking HTTP access (port 8081)..."
curl -I http://localhost:8081

echo ""
echo "[2] Scanning port with nmap..."
nmap -p 8081 localhost

echo ""
echo "[3] Checking running container..."
sudo docker ps | grep perimeter-web
