#!/bin/bash
echo "======================================"
echo "  📶 Cyber-XMR WiFi Security Checker"
echo "  Made in Sanaa, Yemen 🇾🇪"
echo "======================================"
echo ""
echo "[*] فحص معلومات الشبكة..."
echo ""
echo "--- 1. عنوانك الداخلي ---"
ip addr show wlan0 2>/dev/null | grep inet
ifconfig 2>/dev/null | grep inet
echo ""
echo "--- 2. بوابة الشبكة (الراوتر) ---"
ip route | grep default
echo ""
echo "--- 3. فحص سرعة الاتصال بالراوتر ---"
GW=$(ip route | grep default | awk '{print $3}' | head -1)
if [ ! -z "$GW" ]; then
  ping -c 3 $GW
else
  echo "ما قدرت احدد الراوتر"
fi
echo ""
echo "--- 4. فحص DNS (هل يمن نت يتجسس؟) ---"
getprop net.dns1 2>/dev/null
getprop net.dns2 2>/dev/null
cat /etc/resolv.conf 2>/dev/null | grep nameserver
echo ""
echo "--- 5. فحص هل الشبكة آمنة ---"
echo "اذا الـ Gateway يبدأ بـ 192.168 او 10.0 فهو راوتر منزلي طبيعي"
echo "اذا الـ DNS هو 8.8.8.8 فهو جوجل (سريع وآمن)"
echo "اذا DNS غريب، ممكن في اختراق!"
echo ""
echo "Done! ✅"