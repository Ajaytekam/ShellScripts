#!/bin/bash

CheckIfNo() {
    if ! [[ "$1" =~ ^[0-9]+$ ]]
    then
        echo "Error: $1 is not a number.!!"
        exit
    fi
}

# check if ncat is installed or not
ret=`which ncat`
if [ -z "$ret" ]
then
    echo "Error: 'ncat' is not installed.!!"
    exit
fi

# take input
read -p "Enter IP Addess [127.0.0.1] :> " ip_addr
read -p "Enter Service port no. to Forword :> " service_port
read -p "Enter External Port to Forword :> " extr_port

if [ -z "$ip_addr" ]
then
    ip_addr=127.0.0.1
fi

# check the entered port number
CheckIfNo $service_port
CheckIfNo $extr_port

# Command
# echo ncat -l -p $extr_port -c "ncat $ip_addr $service_port"
ncat -lv -p $extr_port -c "ncat $ip_addr $service_port"
