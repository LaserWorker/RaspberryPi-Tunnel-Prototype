#This script will create a connection
# will run ssh or telnet specific to the value given $1
# the text in $2 wil provide a command/action
USER="pi"

if [ $1 = 0 ]; then
#telnet $USER @192.168.1.101
#exit
sleep 1
fi

if [ $1 = 1 ]; then
#telnet $USER @192.168.1.103
#exit
sleep 1
fi

if [ $1 = 2 ]; then
sshpass -p "raspberry" ssh -o StrictHostKeyChecking=no pi@192.168.2.103 sh run.s
sleep 1
fi

if [ $1 = 3 ]; then
sshpass -p "raspberry" ssh -o StrictHostKeyChecking=no pi@192.168.2.103 exit
sleep 1
fi

if [ $1 = 4 ]; then
sshpass -p "raspberry" ssh -o StrictHostKeyChecking=no pi@192.168.2.103 exit
sleep 1
fi

if [ $1 = 5 ]; then
sshpass -p "raspberry" ssh -o StrictHostKeyChecking=no pi@192.168.2.103 exit
sleep 1
fi

if [ $1 = 6 ]; then
sshpass -p "raspberry" ssh -o StrictHostKeyChecking=no pi@192.168.2.103 exit
sleep 1
fi

if [ $1 = 7 ]; then
sshpass -p "raspberry" ssh -o StrictHostKeyChecking=no pi@192.168.2.103 exit
sleep 1
fi

if [ $1 = 8 ]; then
sshpass -p "raspberry" ssh -o StrictHostKeyChecking=no pi@192.168.2.103 exit
sleep 1
fi

if [ $1 = 9 ]; then
sshpass -p "raspberry" ssh -o StrictHostKeyChecking=no pi@192.168.2.103 exit
sleep 1
fi
