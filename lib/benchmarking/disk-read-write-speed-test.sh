#!/usr/bin/env bash
# by TB : 2012-10-12

# if [ "$USER" != "root" ]
# then
# 	echo "You must be root to execute this script (in order to instruct the kernel to drop the cache)!"
# 	exit 1
# fi
#
# if [ -z "$1" ]
# then
# 	TESTFILE=`mktemp`
# else
# 	DIR="$1"
# 	[ ! -d "$DIR" ] && { echo "$DIR must be a directory"; exit 1; }
# 	echo "Are you sure you want to use $DIR as a test file directory. CTRL-C to abort" && read
# 	TESTFILE=$(mktemp --tmpdir=$DIR)
#
# fi
# DD_SIZE="bs=64k count=16k"
#
# function cleanup {
# 	echo 'exiting, removing test file';
# 	rm ${TESTFILE};
#
# }
#
# function do_dd_test {
# 	echo -n "$1 ==>"
# 	shift
# 	dd $@ 2>&1 | tail -1 | cut -d, -f3
# 	echo "===================="
# }
#
# trap "{ cleanup; exit 1; }" SIGKILL SIGTERM SIGINT
#
# echo "Simple dd Speed Test"
# echo "===================="
#
# #Drop cache
# echo 3 > /proc/sys/vm/drop_caches
# do_dd_test "WRITE TEST" if=/dev/zero of=${TESTFILE} ${DD_SIZE} conv=fdatasync
#
# #Drop cache
# echo 3 > /proc/sys/vm/drop_caches
#
# do_dd_test "READ TEST (W/O CACHE)"  if=${TESTFILE} of=/dev/null ${DD_SIZE}
# do_dd_test "READ TEST (WITH CACHE)" if=${TESTFILE} of=/dev/null ${DD_SIZE}
# cleanup;

## DIFFERENT script
##

echo "---------------------"
echo "Write Test Running. Please Wait..."
sudo purge
sudo write=$(dd if=/dev/zero bs=2048k of=tstfile count=1024 2>&1 | grep sec | awk '{print $1 / 1024 / 1024 / $5, "MB/sec" }')
sudo purge
echo ""
echo "Read Test Running. Please Wait..."
sudo read=$(dd if=tstfile bs=2048k of=/dev/null count=1024 2>&1 | grep sec | awk '{print $1 / 1024 / 1024 / $5, "MB/sec" }')
#clear
echo ""
echo "Read Speed is: $read"
echo "Write Speed is: $write"
echo "---------------------"
echo "Cleaning up. Please Wait..."
sudo purge
#sudo rm tstfile
echo ""

exit 0
