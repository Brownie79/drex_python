#!/bin/bash
temp="${HOME}/qtum/src/qtum-cli -regtest -rpcuser=root -rpcpassword=DREX"

$temp getaccountinfo $1



