#!/bin/bash

# Đường dẫn Maven của bạn
MVN_CMD="C:/Program Files/JetBrains/IntelliJ IDEA 2025.3.3/plugins/maven/lib/maven3/bin/mvn"

echo "==================================================="
echo "  BAI 04: KIỂM THỬ ĐA HỆ ĐIỀU HÀNH (LOCAL TEST) "
echo "==================================================="

echo ""
echo "[1] Dang don dep du an (mvn clean)..."
"$MVN_CMD" clean

echo ""
echo "[2] Kiem tra Checkstyle..."
"$MVN_CMD" checkstyle:check

echo ""
echo "[3] Chay Test tuong thich HDH va Dong goi (mvn install)..."
"$MVN_CMD" install

echo ""
echo "==================================================="
echo "  DONE! KIEM TRA LOG DE XEM CAC TEST CASE CO PASS KHONG"
echo "==================================================="