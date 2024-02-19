#!/bin/bash

TEST_MODE=1 LOG="/tmp/docker-cleanup.log" STATUS=0 ./docker-cleanup "3h5m"
grep -q -- "--filter until=3h5m" /tmp/docker-cleanup.log && echo "[OK]: Test passed" || echo "[ERROR]: Test failed"
rm -f /tmp/docker-cleanup.log


TEST_MODE=1 LOG="/tmp/docker-cleanup.log" STATUS=0 ./docker-cleanup "10d"
grep -q -- "--filter until=240h" /tmp/docker-cleanup.log && echo "[OK]: Test passed" || echo "[ERROR]: Test failed"
# cat /tmp/docker-cleanup.log
rm -f /tmp/docker-cleanup.log

TEST_MODE=1 LOG="/tmp/docker-cleanup.log" STATUS=0 ./docker-cleanup "1w"
grep -q -- "--filter until=168h" /tmp/docker-cleanup.log && echo "[OK]: Test passed" || echo "[ERROR]: Test failed"
rm -f /tmp/docker-cleanup.log
