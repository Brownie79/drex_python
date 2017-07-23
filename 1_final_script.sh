#!/bin/bash

#if [ -d ${HOME}/.qtum/regtest ]; then
#	echo "Deleting .qtum/regtest/"
#	rm -rf ${HOME}/.qtum/regtest/
#fi

~/qtum/src/qtumd -daemon -regtest -server -rpcuser=root -rpcpassword=DREX
temp="${HOME}/qtum/src/qtum-cli -regtest -rpcuser=root -rpcpassword=DREX"
echo $temp
#qc_="${HOME}/qtum/src/qtum-cli -regtest -rpcuser=root -rpcpassword=DREX"

#echo qc

$temp generate 550
#$qc_ generate 550
#echo $qc generate 550
#if [ -f /root/qtum/src/qtum-cli ]; then
#echo "Exists"
#fi

#'''
#$qc_ getnewaddress "consumer1"
$temp getnewaddress consumer1
#$qc_ move "" "consumer1" 10000
$temp move "" consumer1 10000

#$qc_ getnewaddress "consumer2"
$temp getnewaddress consumer2
#$qc_ move "" "consumer2" 10000
$temp move "" consumer2 10000

#$qc_ getnewaddress "consumer3"
$temp getnewaddress consumer3
#$qc_ move "" "consumer3" 10000
$temp move "" consumer3 10000

#$qc_ getnewaddress "provider1"
$temp getnewaddress provider1
#$qc_ move "" "provider1" 10000
$temp move "" provider1 10000

#$qc_ getnewaddress "provider2"
$temp getnewaddress provider2
#$qc_ move "" "provider2" 10000
$temp move "" provider2 10000

#$qc_ getnewaddress "financier1"
$temp getnewaddress financier1
#$qc_ move "" "financier1" 10000
$temp move "" financier1 10000

#$qc_ getnewaddress "financier2"
$temp getnewaddress financier2
#$qc_ move "" "financier2" 10000
$temp move "" financier2 10000
#$qc_ createcontract $(cat "solartoken.bytecode") 10000000
$temp createcontract $(cat "solartoken.bytecode") 10000000

$temp generate 10


