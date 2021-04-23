#/bin/bash
echo "exporting ENV VAR ANSIBLE_INVENTORY with ./inventory.txt"
export ANSIBLE_INVENTORY=./inventory.txt
echo "trying ansible ping module on sentinelle host"
ansible sentinelle -m ping
ansible myserver -m ping
echo "you can also specify the inventory on the command line wih -i ./inventory.txt"
ansible myserver -m ping -i inventory.txt
ansible sentinelle -m ping -i inventory.txt