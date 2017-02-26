#!/usr/bin/env python3

import sys

class Backlight:
    def __init__(self):
        self.base_dir = '/sys/class/backlight/intel_backlight/'
        self.min_brightness = 0
        self.max_brightness = int(open(self.base_dir+'max_brightness').read())

    def increase_brightness(self, level_delta):
        current = int(open(self.base_dir+'brightness').read())
        open(self.base_dir+'brightness', 'w').write(str(min(current+level_delta, self.max_brightness)))

    def decrease_brightness(self, level_delta):
        current = int(open(self.base_dir+'brightness').read())
        open(self.base_dir+'brightness', 'w').write(str(max(current-level_delta, self.min_brightness)))


if len(sys.argv) > 2:
    backlight = Backlight()
    if sys.argv[1] == 'inc':
        backlight.increase_brightness(int(sys.argv[2]))
    elif sys.argv[1] == 'dec':
        backlight.decrease_brightness(int(sys.argv[2]))
