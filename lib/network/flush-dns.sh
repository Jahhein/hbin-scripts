#!/usr/bin/env zsh
# --------
# Reset DNS, flush cache.

echo "Ensure to alter this script as fit for your OS Version!"

## OS X Yosemite and Later
# Use the following Terminal command to reset the DNS cache in OS X v10.10.4 or later:
sudo killall -HUP mDNSResponder

# Use the following Terminal command to reset the DNS cache in OS X v10.10 through v10.10.3:
#sudo discoveryutil mdnsflushcache


## OS X Mavericks, Mountain Lion, and Lion
# Use the following Terminal command to reset the DNS cache in OS X v10.9.5 and earlier:
#sudo killall -HUP mDNSResponder


## Mac OS X Snow Leopard
# Use the following Terminal command to reset the DNS cache in OS X v10.6 through v10.6.8:
#sudo dscacheutil -flushcache

echo "DNS flushed"

exit 0