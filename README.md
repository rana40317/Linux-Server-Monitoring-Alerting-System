Linux Server Monitoring and Alerting System

Overview

The Linux Server Monitoring and Alerting System is a Bash-based monitoring solution designed to track the health and performance of a Linux server. The script continuously checks critical system resources and generates reports that help administrators identify potential issues before they impact system performance.
This project demonstrates Linux administration, shell scripting, automation, monitoring, and scheduling using Cron.


A. Features

1. CPU Usage Monitoring
2. Memory Usage Monitoring
3. Disk Usage Monitoring
4. Running Process Monitoring
5. System Uptime Tracking
6. Automated Report Generation
7. Cron Job Integration for Scheduled Monitoring


B. Technologies Used

1. Linux (Ubuntu)
2. Bash Shell Scripting
3. Cron Scheduler
4. Linux Monitoring Commands

C. Project Structure

Linux-Server-Monitoring-and-Alerting-System/
│
├── servermonitor.sh
├── Report.log
├── screenshots/
│   ├── monitoring.png
│   ├── cron.png
│   └── report.png
└── README.md

D. How It Works

The monitoring script performs the following tasks:

1. Collects CPU usage information.
2. Collects memory usage statistics.
3. Checks available disk space.
4. Displays system uptime.
5. Logs the collected information into a report file.
6. Can be scheduled using Cron for automatic execution.

E. Installation

Clone the repository:

It is a command for the terminal
git clone https://github.com/yourusername/Linux-Server-Monitoring-and-Alerting-System.git


Move into the project directory:

It is a command for the terminal
cd Linux-Server-Monitoring-and-Alerting-System

Make the script executable:

It is a command for the terminal
chmod +x servermonitor.sh


Run the script:

It is a command for the terminal
./servermonitor.sh


F. Cron Job Setup

Open the crontab editor:

It is a command for the terminal
crontab -e


Add the following line to run every 5 minutes:

It is a command for the terminal
*/5 * * * * /path/to/servermonitor.sh

Save and exit.

Verify Cron jobs:

It is a command for the terminal
crontab -l

G. Sample Output

==============================
Linux Server Monitoring Report
==============================

CPU Usage: 25%
Memory Usage: 43%
Disk Usage: 33%
System Uptime: 38 min

H. Learning Outcomes

Through this project, I learned:

1. Linux System Administration
2. Bash Shell Scripting
3. Process Monitoring
4. Disk and Memory Management
5. Task Scheduling with Cron
6. Log Generation and Reporting
7. DevOps Monitoring Fundamentals

I. Future Enhancements

1. Email Alerts: When the CPU or disk reaches its threshold, it will send an automatic email to the given email ID. It will acheive using mailutils.
2. Slack Notifications: Create a Slack workspace and an Incoming Webhook.
3. Dashboard Integration: Instead of generating logs, it will display all metrics visually. It can be achieved through Grafana.
4. Multi-Server Monitoring: It will collect CPU, disk space, and other critical data from multiple servers connected to a network. 


J. Author

Mr.Sayantan Kar

Aspiring DevOps Engineer

Email: sayantankar1@gmail.com
LinkedIn: https://www.linkedin.com/in/sayantankar/
GitHub: https://github.com/rana40317
