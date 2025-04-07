#!/bin/bash
SLOW_LOG="/var/lib/mysql/slow-query.log"
echo "Top 10 longest queries:"
grep -B 1 -A 5 "Query_time" $SLOW_LOG | awk '/Query_time/ {print $2}' | sort -nr | head -10
