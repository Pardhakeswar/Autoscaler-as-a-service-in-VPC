#!/bin/bash

user="root"
password="kushaltapas"
hypervisorip=$1
hypervisoruser=$2
cont_name=$3
net_name=$4
nsname=$5
num_cont=$6
vethIP=$7
mgmthypip=$8
mgmthypuser=$9
staticip=$10
host_file_name="inventory"

#------------------Destroy container------------------
echo "Destroying container: $cont_name"
if ! grep -q "$hypervisoruser@$hypervisorip" $host_file_name
then
    # code if not found
    echo -e "[$hypervisoruser@$hypervisorip]\n$hypervisorip\n" >> $host_file_name
fi
ansible-playbook -i inventory delete_container.yml -e "host=$hypervisoruser@$hypervisorip cont_name=$cont_name"
#-------------------Destroy container--------------------
#------------------Update json------------------
echo "Updating json"
python updatejsondelete.py $net_name $hypervisorip $cont_name
echo "Updating json done"
#------------------Update json------------------

#----------Update NS for Load Balancing---------
#TBD
./LoadBalancer.sh REM $mgmthypip $mgmthypuser $nsname $staticip $num_cont $vethIP
#----------Update NS for Load Balancing---------
