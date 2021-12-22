#!/bin/bash

echo This is Port Scanner
nc -z -v -w 1 $1 1-64  2>&1 | grep succeeded & \
nc -z -v -w 1 $1 64-128 2>&1 | grep succeeded & \
nc -z -v -w 1 $1 128-192 2>&1 | grep succeeded & \
nc -z -v -w 1 $1 192-256 2>&1 | grep succeeded & \
nc -z -v -w 1 $1 256-320 2>&1 | grep succeeded & \
nc -z -v -w 1 $1 320-384 2>&1 | grep succeeded & \
nc -z -v -w 1 $1 384-410 2>&1 | grep succeeded & \
nc -z -v -w 1 $1 410-444 2>&1 | grep succeeded & \
# nc -z -v -w 1 $1 50-81 2>&1 | grep succeeded & \








# nc -v -z -w 1 toplearn.com 53
#  & nc -z -v -w 1 185.129.168.26 50-81 2>&1 | grep succeeded