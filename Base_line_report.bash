#!/bin/bash

echo "======================================"
echo "       CLOUD VM BASELINE REPORT"
echo "======================================"

read -r -p "Enter the Hostname :" expected_hostname

if [ -z "$expected_hostname" ]
then
    echo "Error Hostname...Don't Entry "
    exit 1
fi

current_user=$(whoami)
Hostname=$(hostname)
Date=$(date)
Uptime=$(uptime)
Listening_soket=$(ss -tuln)

echo
echo "============= SYSTEM INFO ============"

echo "Current_user : $current_user "
echo "Hostname is  : $Hostname"
echo "Date is      : $Date"
echo "Uptime is    : $Uptime"

echo 

echo
echo "============= HOST CHECK ============="

if [ "$expected_hostname" = "$Hostname" ]
then
    echo "Hostname Is Matched"
else
    echo "Hostname Doesnot Matched"
fi

echo
echo "========== LISTENING SOCKETS ========="

echo "$Listening_soket"

echo
echo "Review the listening sockets to identify"

echo
echo "========== REPORT COMPLETE ==========="






