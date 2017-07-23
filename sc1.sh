export qtumd_start="~/qtum/src/qtumd -regtest -server -rpcuser=root -rpcpassword=DREX" 
export qc="~/qtum/src/qtum-cli -regtest -rpcuser=root -rpcpassword=DREX"
qc createcontract $(cat solartoken.bytecode) 10000000 #ADMIN created contract