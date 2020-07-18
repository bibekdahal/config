#!/bin/bash

if xrandr | grep 'DP1 connected'; then
    xrandr --auto --output eDP1 --right-of DP1
fi
