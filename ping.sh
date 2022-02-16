hostsfile="inventory/pi-cluster/$1"
if [ -z "$1" ]
then
     hostsfile="inventory/pi-cluster/hosts.ini"
fi
if [ -f $hostsfile ]
then
     ansible all -m ping -i $hostsfile
else
     print "The $hostsfile does not exist!"
fi

