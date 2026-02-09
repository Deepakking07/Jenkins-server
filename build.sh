#!/bin/bash
echo "=========================================="
echo "Jenkins Auto Build - $(date)"
echo "Host: $(hostname)"
ls -la
echo "✅ Script executed successfully!"

# FORCE RELIABLE EMAIL
(
echo "Subject: Jenkins Task-2 #$BUILD_NUMBER - SUCCESS!"
echo "To: deepakkumark2001@gmail.com"
echo "From: jenkins@ip-172-31-20-58"
echo ""
echo "Jenkins Build #$BUILD_NUMBER COMPLETED SUCCESSFULLY!"
echo "Date: $(date)"
echo "Host: $(hostname)"
echo "Console: http://54.235.34.254:8080/job/Jenkins%20Task-2/$BUILD_NUMBER/console"
echo ""
echo "Changes:"
echo "Commit: $(git log -1 --pretty=format:'%h - %an (%ae) %s')"
) | /usr/sbin/sendmail deepakkumark2001@gmail.com

echo "✅ Email sent via sendmail!"
