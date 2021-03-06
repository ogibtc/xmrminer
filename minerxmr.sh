#!/bin/bash
if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
else
apt-get update -y
git --version || apt-get install git -y
git clone https://github.com/ogibtc/miner-monero.git
cd miner-monero
apt-get install autoconf -y
apt-get install libcurl4-openssl-dev -y
apt-get install libjansson-dev -y
apt-get install openssl -y
apt-get install libssl-dev -y
./autogen.sh #
./configure
make
printf "Raspberry Pi - Monero XMR Miner by DaRkU\n"
printf "To use type ./minerd with any options you want while in the cpuminer-multi folder\n"
printf "For example ./minerd -a cryptonight -o stratum+tcp://xmr-usa.dwarfpool.com:8050 -u 45MfScNnyb3KwanUH4feiDExdydQ3cACKPpJuxmtoVnY25Khw7nBeZmXhtoWj4Pfi4PjdxkFWpaW72PR3Jy1Xr8R6HFyk9M -p x -t 4"

fi
