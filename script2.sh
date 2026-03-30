#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Suyash Srivastava
# Registration Number: 24BAI10278

PACKAGE="python3"

echo "======================================="
echo "   FOSS Package Inspector"
echo "======================================="

if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    echo "---------------------------------------"
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo "---------------------------------------"

case $PACKAGE in
    python3)
        echo "Python: a language designed for readability and community-driven innovation."
        ;;
    apache2)
        echo "Apache: the web server that helped build the modern internet."
        ;;
    mysql-server)
        echo "MySQL: open-source database powering countless applications."
        ;;
    vlc)
        echo "VLC: a media player built for openness and flexibility."
        ;;
    *)
        echo "No philosophy note available for this package."
        ;;
esac

echo "======================================="
