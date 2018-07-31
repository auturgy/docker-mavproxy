#!/usr/bin/env bash

set -e

LOG_NAME=$(date "+%Y%m%d_%H%M%S_mavproxy")
LOG_FILE_NAME="${LOG_NAME}.log"
LOG_DIR="/var/log/mavproxy/"

cd ${LOG_DIR}
mkdir ${LOG_NAME}
cd ${LOG_NAME}

mavproxy.py --out=udp:127.0.0.1:14550 --out=udp:127.0.0.1:14551 --logfile=${LOG_FILE_NAME} ${@}