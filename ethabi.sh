#!/bin/bash

#$1 is the address of the transaction
ethabi encode function ./solartoken_interface.json name -p 10000000 $1
