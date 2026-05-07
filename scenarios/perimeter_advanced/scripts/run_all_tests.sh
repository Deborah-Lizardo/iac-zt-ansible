#!/bin/bash

echo "===================================="
echo "running all security tests"
echo "===================================="

echo ""
echo "starting ufw firewall test"
./test_ufw.sh

echo ""
echo "starting access control test"
./test_access.sh

echo ""
echo "starting container isolation test"
./test_isolation.sh

echo ""
echo "starting ansible validation test"
./test_ansible.sh

echo ""
echo "===================================="
echo "all tests completed"
echo "===================================="
