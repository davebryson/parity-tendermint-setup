# Parity local testing environment with Tendermint Consensus

Vagrant setup with 2 parity nodes configured to run the tendermint consensus
starting with Parity 1.5

## Requirements
- Vagrant
- VirtualBox

## Setup
- From this directory `vagrant up`
- Once the machine is started `vagrant ssh`
- From the ubuntu terminal `cd setup`
- Then `sh init.sh`
- Finally `sh start.sh`

This will start and connect 2 nodes.  You can see the accounts for use in the
`accounts.txt` file.  Only 1 is funded.

Note: Vagrant is configured to share the `setup` folder with your host machine
