#!/usr/bin/env bash

set -e

LOG_NAME=$(date "+%Y%m%d_%H%M%S_mavproxy.log")
LOG_PATH="/var/log/mavproxy/${LOG_NAME}"


mavproxy.py --out=udp:127.0.0.1:14550 --out=udp:127.0.0.1:14551 --logfile=${LOG_PATH} ${@}