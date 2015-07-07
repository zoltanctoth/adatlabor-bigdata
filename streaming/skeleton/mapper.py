#!/usr/bin/env python

import sys

for line in sys.stdin:
    line = line.rstrip('\n')

    key = "key"
    value = "value"

    print key + "\t" + value
