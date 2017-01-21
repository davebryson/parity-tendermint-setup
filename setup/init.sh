#!/bin/bash

PARITY0=/tmp/parity0
PARITY1=/tmp/parity1

echo "[*] Cleaning up temporary data directories"
rm -rf data
rm -rf $PARITY0
rm -rf $PARITY1

echo "[*] Make directories"
mkdir -p data/logs
mkdir -p $PARITY0
mkdir -p $PARITY1

echo "[*] Copy keys to /tmp"
cp -r keys $PARITY0
cp -r keys $PARITY1
