#this script should eventually be
#added to the initialization: /etc/rc.d/rc.local
#so that it can start on boot.

#key code is commented out untel final testing

LED=1
XIN=1
I=1
B=8
O=0
C=0
CMD="\n"

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
#turn on button initialy
echo "1" > /sys/class/gpio/gpio17/value
#store value to C
C=$(cat /sys/class/gpio/gpio17/value)
echo $C
#Use that status to update the LED
#LED=$(($C+$LED))

#Check LED status
echo $LED
#put status into status.txt
STAT="The connection to be made will be #"$LED
echo $STAT>status.txt
echo $STAT

#The LEDs must be turned on
sh LEDs.sh $LED

#Run a specific script for a given connection
sh connect.sh $LED $CMD

#pause to make sure user is turning off.
sleep 2
#turn on button initialy
echo "1" > /sys/class/gpio/gpio17/value
#get the value of the button
XIN=$(cat /sys/class/gpio/gpio17/value)
echo $XIN

#If we are changing LED
if [ $C -eq 0 ]; then
#do not shutdown
XIN=1
#Use that status to update the LED
LED=$((1+$LED))
fi

#if we reached the max, reset
if [ $LED -eq 10 ]; then
LED=0
fi

#end while loop
done

#shutdown if the button is still pressed
if [ $LED -eq 0 ]; then
sudo shutdown -h -t sec 0
fi
