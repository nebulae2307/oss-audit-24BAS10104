#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Suyash Srivastava
# Registration Number: 24BAI10278

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================="
echo "      Directory Audit Report"
echo "======================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR"
        echo "  Permissions : $PERMS"
        echo "  Size        : $SIZE"
        echo "---------------------------------------"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "Checking Python configuration directory..."
echo "---------------------------------------"

PYTHON_DIR="/etc/python3"

if [ -d "$PYTHON_DIR" ]; then
    PERMS=$(ls -ld $PYTHON_DIR | awk '{print $1, $3, $4}')
    echo "$PYTHON_DIR exists"
    echo "Permissions : $PERMS"
else
    echo "$PYTHON_DIR does NOT exist on this system"
fi

echo "======================================="
