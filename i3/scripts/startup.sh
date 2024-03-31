#!/bin/bash

# Set proper refresh rate.
xrandr --output $(xrandr | grep -w "connected" | sed 's/ .*//') --mode 2560x1440 --rate 144.00
