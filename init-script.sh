#this script should eventually be
#added to the initialization: /etc/rc.d/rc.local
#so that it can start on boot.

#key code is commented out untel final testing

LED=10
XIN=1
I=1
B=8
O=0
echo $XIN
echo $O
echo $B
echo $I
echo $LED

#get input from pin
echo "17" > /sys/class/gpio/export
echo "1" > /sys/class/gpio/gpio17/value

#XIN=$(</sys/class/gpio/gpio17/value);
echo $XIN

#Keeps the pi making new connections
while [ $XIN -eq 1 ]; do

#turn off the LED display to show ready
sh LEDs.sh 11

#Get the current status of the button
sleep 1
XIN=$(cat /sys/class/gpio/gpio17/value)
echo $XIN

#Check LED status
echo $LED
#put status into status.txt

#The LEDs must be turned on
sh LEDs.sh $LED

#Run a specific script for a given connection
#sh connect.sh $LED

#turn on button initialy
echo "1" > /sys/class/gpio/gpio17/value
#pause to make sure user is turning off.
sleep 2
#get the value of the button
XIN=$(cat /sys/class/gpio/gpio17/value)
echo $XIN

#end while loop
done

LED="10"

sh LEDs.sh $LED


#shutdown if the button is still pressed
#if [ button pressed ]
#   sudo reboot
#fi
