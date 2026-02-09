#!/bin/bash
echo "=========================================="
echo "Jenkins Auto Build - $(date)"
echo "Host: $(hostname)"
ls -la
echo "✅ Script executed successfully!"

# WEBHOOK.SITE NOTIFICATION (100% Guaranteed)
curl -X POST https://webhook.site/1133d604-17b7-40da-b684-eedddd801525 \
  -H 'Content-Type: application/json' \
  -d "{
    \"build\": \"$BUILD_NUMBER\",
    \"status\": \"SUCCESS\",
    \"url\": \"http://$(curl -s ifconfig.me):8080/job/Jenkins%20Task-2/$BUILD_NUMBER/console\",
    \"time\": \"$(date)\",
    \"host\": \"$(hostname)\",
    \"commit\": \"$(git log -1 --pretty=format:'%h')\"
  }"

echo "✅ Webhook notification sent to webhook.site!"
echo "Check: https://webhook.site/1133d604-17b7-40da-b684-eedddd801525"
