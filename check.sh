#!/bin/bash
# Cyber-XMR-Tools - فحص شامل
# للحماية الشخصية فقط

echo "🛡️ بدء فحص Cyber-XMR..."

echo ""
echo "--- العمليات النشطة ---"
ps aux | head -30

echo ""
echo "--- الاتصالات ---"
netstat -tunap 2>/dev/null || ss -tuln

echo ""
echo "--- التطبيقات ---"
pm list packages | tail -30

echo ""
echo "✅ انتهى الفحص"