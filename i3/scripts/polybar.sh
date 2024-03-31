#!/bin/bash

killall -q polybar
echo "---" | tee -a /tmp/polybar-main.log
polybar main 2>&1 | tee -a /tmp/polybar-main.log & disown
