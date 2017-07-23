# !/bin/bash

# #0. Delete Old Chain
rm -rf ~/.qtum/regtest/

#1. Create New Chain
##Start Chain
qtumd-start 
##Mine the first 550 blocks to get yourself Qtum
qc generate 550

#2. Generate new addresses and transfer 10k qtum to each acc
qc getnewaddress "consumer1"
qc move "" "consumer1" 10000
qc getnewaddress "consumer2"
qc move "" "consumer2" 10000
qc getnewaddress "consumer3"
qc move "" "consumer3" 10000
qc getnewaddress "provider1"
qc move "" "provider1" 10000
qc getnewaddress "provider2"
qc move "" "provider2" 10000
qc getnewaddress "financier1"
qc move "" "financier1" 10000
qc getnewaddress "financier2"
qc move "" "financier2" 10000

#3. Deploy the Solar Tokens Contract
##a. deploy the smart contract
qc createcontract $(cat ) 10000000 #ADMIN created contract


##b. give solar tokens to all the users