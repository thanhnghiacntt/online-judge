#!/bin/bash

echo "▶ Starting DMOJ bridge..."
cd /home/dmojuser/dmoj/online-judge || exit
source myenv/bin/activate

python3 manage.py runbridged
