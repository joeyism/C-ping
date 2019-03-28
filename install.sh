#!/bin/bash
outfile=jping
gcc ping.c -o $outfile
sudo setcap cap_net_raw+ep ./$oufile
sudo chown root:root ./$outfile
sudo mv $outfile /usr/bin/
