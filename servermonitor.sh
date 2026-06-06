#!/bin/bash

echo "Linux Server Monitoring and Alerting System"

LOGFILE="../LM/Report.log"

echo "Report of $(date)" >> $LOGFILE
echo "Disk Usage in a human readable format"
df -h >> $LOGFILE

echo ""
Diskusage=$(df / |awk 'NR==2 {print $5}' | sed 's/%//')

if ["$Diskusage" -gt 80]; then
	echo "Alert, Disk usage is ${Diskusage}%"
else
	echo "Normal, Disk usage is ${Diskusage}%"
fi

echo "Memomry usage"

free -m >> $LOGFILE

echo ""
Memoryusage=$(free | awk 'NR==2 {printf "%.0f",$3/$2 *100}')

if ["Memoryusage" -gt 80]; then
	echo "Alert, Current Memory Usage is ${Memoryusage}%"
else
	echo "Normal, Current Memory Usage is ${Memoryusage}%"
fi

echo "CPU utilisation"

uptime >> $LOGFILE

echo "Show Top 5 processes"

ps aux --sort=-%mem | head -n 6  >> $LOGFILE

echo "Show the latest log from the report file"


echo "Service Status"
Services=("cron" "ssh")

for service in "${services[@]}"
do 
	if systemctl is active --quiet "$service"; then
		echo "Service is running"
	else
		echo "Service is not running"
	fi
done


















tail -f /home/rana/Desktop/LM/Report.log
