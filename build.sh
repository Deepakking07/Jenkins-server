#!/bin/bash
# Your existing build.sh content...

echo "=========================================="
echo "Jenkins Auto Build - $(date)"
echo "Host: $(hostname)"
ls -la
echo "✅ Script executed successfully!"

# FORCE EMAIL NOTIFICATION
echo "Build #$BUILD_NUMBER SUCCESS on $(date)" | \
mail -s "Jenkins Task-2 #$BUILD_NUMBER - SUCCESS" deepakkumark2001@gmail.com

echo "✅ Email sent via shell command!"

#Success
