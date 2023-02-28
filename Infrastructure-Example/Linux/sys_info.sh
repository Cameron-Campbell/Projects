#! bin/bash/

if [ -d ~/research }
	then 
	echo "This folder already exists!"
	else
	mkdir /~/research
fi

echo "A Quick System Audit Script"
date
echo ""
echo "Machine Type Info:"
echo $MACHTYPE
echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n"
echo -e "Hostname: $(hostname -s) \n"
echo "DNS Servers: "
cat etc/resolv.conf
echo -e "\nMemory Info:"
free
echo -e "\nCPU Info:"
lscpu | grep CPU
echo -e "\nDisk Usage:"
df -H | head -2
echo -e "\nWho is logged in: \n $(who -a) \n"
echo -e "\nExec Files:"
fine /home -type f -perm 777
echo -e "\nTop 10 Processes"
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head
