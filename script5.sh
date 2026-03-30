#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Suyash Srivastava
# Registration Number: 24BAI10278

echo "======================================="
echo "   Open Source Manifesto Generator"
echo "======================================="
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "" > $OUTPUT
echo "Open Source Manifesto — $DATE" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use tools like $TOOL in my daily work, which represent the power of open collaboration." >> $OUTPUT
echo "To me, freedom means $FREEDOM, and it is this principle that drives the open-source movement." >> $OUTPUT
echo "In the future, I aim to build and share $BUILD so that others can learn, improve, and innovate upon it." >> $OUTPUT
echo "I believe that knowledge should be shared openly to build a stronger technological ecosystem." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo "----------------------------------------"
cat $OUTPUT
echo "======================================="
