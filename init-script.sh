#this script should eventually be 
#added to the initialization: /etc/rc.d/rc.local
#so that it can start on boot.

#key code is commented out untel final testing

LED=10


#XIN=$(</sys/class/gpio/gpio17/value);
#To make the script repeat, it runs a while loop
while [ $XIN -eq 1 ]; do

# get the value of the button 
XIN=$(cat /sys/class/gpio/gpio17/value)


#Check LED status
if [LED>8 & "button pressed"]
    LED=0
else
    LED=LED+1
fi

#The LEDs must be turned on
echo sh 7seg-Led-on.sh $LED


#Run a specific script for a given connection
echo sh startconnection.sh $LED


#end while loop
done

LED=10
echo sh 7seg-Led-on.sh $LED

#shutdown if the button is still pressed
#if [ button pressed ]
#   sudo reboot
#fi
