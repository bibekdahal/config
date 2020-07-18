#!/usr/bin/env python3

import sys
import subprocess


if len(sys.argv) > 0:
    arg = sys.argv[1]

    if arg == "shutdown":
        subprocess.call("poweroff")
    elif arg == "restart":
        subprocess.call("reboot")
    elif arg == "lock":
        subprocess.call(["i3lock", "-i", "/home/bibek/.config/i3/wallpaper.png", "-u"])

    elif arg == "suspend":
        subprocess.call(["systemctl", "suspend"])

    elif arg == "logout":
        subprocess.call(["i3-msg", "exit"])
