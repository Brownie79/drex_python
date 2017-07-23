#!/bin/bash

echo "<Qtum address> <amount>"

/root/qtum/src/qtum-cli -regtest -rpcuser=root -rpcpassword=DREX sendtoaddress $1 $2 
