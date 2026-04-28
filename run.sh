#!/bin/bash

# Khai báo đường dẫn tuyệt đối đến thư mục chứa Maven của IntelliJ
MVN_CMD="C:/Program Files/JetBrains/IntelliJ IDEA 2025.3.3/plugins/maven/lib/maven3/bin/mvn"

echo "==================================================="
echo "  BẮT ĐẦU CHẠY MAVEN TỰ ĐỘNG "
echo "==================================================="

echo ""
echo "[1] Đang dọn dẹp các file cũ (mvn clean)..."
"$MVN_CMD" clean

echo ""
echo "[2] Đang kiểm tra lỗi Checkstyle (mvn checkstyle:check)..."
"$MVN_CMD" checkstyle:check

echo ""
echo "[3] Đang biên dịch, chạy Test và Đóng gói (mvn install)..."
"$MVN_CMD" install

echo ""
echo "==================================================="
echo "  HOÀN THÀNH! HÃY KIỂM TRA CHỮ 'BUILD SUCCESS' BÊN TRÊN"
echo "==================================================="