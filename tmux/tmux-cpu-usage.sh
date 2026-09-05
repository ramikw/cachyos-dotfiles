#!/bin/sh
# Prints CPU usage as a rounded percentage, sampled from /proc/stat
# (avoids forking the heavier `top` binary on every status-bar refresh).
read -r _ u1 n1 s1 i1 w1 x1 y1 z1 _ < /proc/stat
sleep 0.1
read -r _ u2 n2 s2 i2 w2 x2 y2 z2 _ < /proc/stat

used1=$((u1 + n1 + s1 + x1 + y1 + z1))
used2=$((u2 + n2 + s2 + x2 + y2 + z2))
total1=$((used1 + i1 + w1))
total2=$((used2 + i2 + w2))

delta_used=$((used2 - used1))
delta_total=$((total2 - total1))

[ "$delta_total" -gt 0 ] && printf '%d%%\n' $((100 * delta_used / delta_total)) || printf '0%%\n'
