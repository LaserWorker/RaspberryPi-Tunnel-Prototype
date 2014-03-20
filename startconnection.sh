# this scrip will run ssh or telnet

if[ $1 = 0]
echo telnet $IP
fi

if[ $1 = 1]
echo ssh $USER@$IP
fi


