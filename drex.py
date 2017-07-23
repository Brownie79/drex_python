import subprocess
import sys
import os

menu_options = """
1. Consumers
2. Providers
3. Finaciers

A. Instantiate Contracts
X. Exit
"""
consumer_options = """
1. Create New Funding Request
2. Pay For Electricty
"""
provider_options = """"
1. Bid on Requests
"""

financier_options = """
1. Available Requests
2. Current Investments
"""

consumer_dict = {}
provider_dict = {}
financier_dict = {}
qtumd_start="~/qtum/src/qtumd -regtest -server -rpcuser=root -rpcpassword=DREX"
qc="~/qtum/src/qtum-cli -regtest -rpcuser=root -rpcpassword=DREX"


def instantiate_chain():
  
  """
  0. Delete old ~/.qtum/regtest if it exists
  """
  subprocess.call("rm -rf ~/.qtum/regtest");

"""
1. Chain is started
    qtumd
    qc generate 550
   End Result: Main account has 1M qtum coins

2. Accounts created and funded with QTUM
    qc getnewaddress "consumer1" ...
    //save them all as consumers = {"consumer#": "addr"} dict
    qc getnewaddress "provider1"...
    qc getnewaddress 'financier1'...

    qc move "" "acc#" //move 10000 to each addr

3. Solar Tokens Contract Deploy
4. Automate Solar Gen Requests -> Provider Bidding -> Funding -> Approval
"""

def main():
  print(menu_options)
  choice = raw_input("Enter an option: ")
  while(choice != "X"):
    if(choice == "A"):
      instantiate_chain()
    elif(choice == "1"):
      return
    elif(choice == "2"):
      return
    elif(choice == "3"):
      return
    else:
      choice="X"
        

main()