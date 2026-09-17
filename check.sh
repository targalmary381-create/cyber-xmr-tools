#!/bin/bash
echo "🛡️ Cyber-XMR Scanner v2 - Sanaa, Yemen"
echo "----------------------------------------"
echo "📱 فحص العمليات:"
ps aux | head -20

echo ""
echo "🌐 فحص الاتصالات (بدون روت):"
ss -tuln 2>/dev/null || cat /proc/net/tcp

echo ""
echo "📦 عدد التطبيقات:"
pm list packages 2>/dev/null | wc -l
echo "اخر 10 تطبيقات:"
pm list packages 2>/dev/null | tail -10 || ls /data/data | tail -10

echo ""
echo "✅ انتهى الفحص بواسطة cyberxmr"