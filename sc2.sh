#!/bin/bash
qtumd_start="~/./qtum/src/qtum-cli -regtest -server -rpcuser=root -rpcpassword=DREX"
qc="${HOME}/qtum/src/qtum-cli -regtest -rpcuser=root -rpcpassword=DREX"
$qc createcontract $(cat './solartoken.bytecode') 10000000
