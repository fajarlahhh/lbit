#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.luckybitcore/luckybitd.pid file instead
luckybit_pid=$(<~/.luckybitcore/testnet3/luckybitd.pid)
sudo gdb -batch -ex "source debug.gdb" luckybitd ${luckybit_pid}
