#!/bin/bash
clear
echo "================================"
echo " Cyber-XMR Scanner v3"
echo " Location: Sanaa, Yemen"
echo " Dev: targalmary381-create"
echo "================================"
echo ""
echo "[*] Processes:"
ps aux | head -20
echo ""
echo "[*] Network Status:"
cat /proc/net/tcp 2>/dev/null | head -10
echo "Active connections checked."
echo ""
echo "[*] Storage:"
df -h | head -10
echo ""
echo "[*] System Info:"
uname -a
echo ""
echo "=== Scan Done by cyberxmr ==="