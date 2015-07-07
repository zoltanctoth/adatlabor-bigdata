#!/usr/bin/env python

import sys

for line in sys.stdin:
    line = line.rstrip('\n')
    record = line.split(",")

    key = record[2]
    value = "1"

    print key + "\t" + value
