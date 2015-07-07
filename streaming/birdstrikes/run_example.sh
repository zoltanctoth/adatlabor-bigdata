#!/bin/bash -e

CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cat birdstrikes.csv | ./mapper.py | sort | ./reducer.py

