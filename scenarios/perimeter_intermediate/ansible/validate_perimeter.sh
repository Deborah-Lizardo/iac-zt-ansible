#!/bin/bash

echo "===================================="
echo "teste de perímetro de segurança"
echo "===================================="

echo ""
echo "teste 1 - verificando acesso na porta 8082 (serviço permitido)"
curl -s -o /dev/null -w "codigo http: %{http_code}\n" http://localhost:8082

echo ""
echo "teste 2 - verificando porta 8083 (tem que estar bloqueada)"
curl -s --connect-timeout 2 http://localhost:8083

if [ $? -ne 0 ]; then
  echo "ok: porta 8083 não responde (bloqueada)"
else
  echo "erro: porta 8083 está acessível (falha de segurança)"
fi

echo ""
echo "teste 3 - conferindo portas abertas localmente"
nmap -p 8082,8083 localhost | grep -E "8082|8083"

echo ""
echo "teste 4 - estado do firewall (ufw)"
sudo ufw status verbose | grep -E "8082|Default"

echo ""
echo "fim do teste de perímetro"
echo "===================================="
