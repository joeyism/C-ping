#!/bin/bash

outfile=jping
gcc ping.c -o $outfile
sudo chown root:root ./$outfile
sudo setcap cap_net_raw+ep ./$outfile
sudo mv $outfile /usr/bin/


outfile=jping10
gcc ping10.c -o $outfile
sudo chown root:root ./$outfile
sudo setcap cap_net_raw+ep ./$outfile
sudo mv $outfile /usr/bin/
