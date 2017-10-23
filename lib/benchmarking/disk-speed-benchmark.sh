#!/usr/bin/env bash
# ------------------------------------------------------------------
# [Author]: Jacob Hein
# Copyright 2017 Jacob Hein. All Rights Reserved.
#
# [Title]: disk-speed-benchmark
#
# [Description]:
#   Determine the read & write speeds of a disk. The current
#   directory's disk location is where the test is done.
# ------------------------------------------------------------------

VERSION=1.0
SUBJECT=disk-speed-benchmark.sh

# To obtain speed expressed in MB/sec, just append the following string to each one of the
# commands: 2>&1 | grep sec | awk '{print "scale = 2 ; "$(NF-1048576) "}' | bc

time dd if=/dev/zero bs=2048k of=tstfile count=1024 2>&1 | awk '/sec/ {print $1 / $5 / 1048576, "MB/sec" }'

#sync; time dd if=/dev/zero bs=1024k of=tstfile count=1024 2>&1 | grep sec | awk '{print "scale = 2 ; "$(NF-1048576) "}' | bc; sync;
#sync; dd if=tstfile bs=1024k of=/dev/null count=1024  2>&1 | grep sec | awk '{print "scale = 2 ; "$(NF-1048576) "}' | bc; sync;

exit 0
