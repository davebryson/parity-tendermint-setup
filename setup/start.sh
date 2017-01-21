#!/bin/bash


echo "[*] Starting node0"
nohup parity --config node0.toml 2>>data/logs/0.log &

echo "[*] Starting node1"
nohup parity --config node1.toml 2>>data/logs/1.log &

echo "[*] wait for nodes to come up to connect"
sleep 10
echo "[*] connect the nodes"
curl --data '{"jsonrpc":"2.0","method":"parity_addReservedPeer","params":["enode://0c75ff012b57d797a7310bba37d52354db903b82b9e6b318a1921832f6b8180764e50404345f6e1d779f9b40f40f13c7c7195eea1df81bbfe2392ff465f47bdc@10.0.2.15:30300"],"id":0}' -H "Content-Type: application/json" -X POST localhost:8541

echo "Nodes running. See data/logs"
