#This is for an 7 segment LED display /w an added dot that stays off.

#Start ech pin to be used
echo "4" > /sys/class/gpio/export
echo "17" > /sys/class/gpio/export
echo "18" > /sys/class/gpio/export
echo "22" > /sys/class/gpio/export
echo "23" > /sys/class/gpio/export
echo "24" > /sys/class/gpio/export
echo "25" > /sys/class/gpio/export
echo "27" > /sys/class/gpio/export
#notice 8 pins are activated.

#set each pin as output
echo "out" > /sys/class/gpio/gpio4/direction
echo "out" > /sys/class/gpio/gpio17/direction
echo "out" > /sys/class/gpio/gpio18/direction
echo "out" > /sys/class/gpio/gpio22/direction
echo "out" > /sys/class/gpio/gpio23/direction
echo "out" > /sys/class/gpio/gpio24/direction
echo "out" > /sys/class/gpio/gpio25/direction
echo "out" > /sys/class/gpio/gpio27/direction
#direction = “out”

RAN=0 #This is a random number to tell me if the number is displayable

if [ "$1" -eq "1" ] #is the number given of value 1
then  #turn on the two sements needed to display 1
        echo "1" > /sys/class/gpio/gpio27/value
        echo "1" > /sys/class/gpio/gpio18/value
      #turn off all other segments
        echo "0" > /sys/class/gpio/gpio4/value
        echo "0" > /sys/class/gpio/gpio17/value
        echo "0" > /sys/class/gpio/gpio22/value
        echo "0" > /sys/class/gpio/gpio23/value
        echo "0" > /sys/class/gpio/gpio24/value
        echo "0" > /sys/class/gpio/gpio25/value
        RAN=1  #the number given is clearly displayable
fi

if [ "$1" -eq "2" ]
then
        echo "1" > /sys/class/gpio/gpio27/value
        echo "1" > /sys/class/gpio/gpio25/value
        echo "1" > /sys/class/gpio/gpio24/value
        echo "1" > /sys/class/gpio/gpio22/value
        echo "1" > /sys/class/gpio/gpio4/value
        echo "0" > /sys/class/gpio/gpio23/value
        echo "0" > /sys/class/gpio/gpio18/value
        echo "0" > /sys/class/gpio/gpio17/value
        RAN=1
fi

if [ "$1" -eq "3" ]
then
        echo "1" > /sys/class/gpio/gpio27/value
        echo "1" > /sys/class/gpio/gpio25/value
        echo "1" > /sys/class/gpio/gpio24/value
        echo "1" > /sys/class/gpio/gpio18/value
        echo "1" > /sys/class/gpio/gpio4/value
        echo "0" > /sys/class/gpio/gpio23/value
        echo "0" > /sys/class/gpio/gpio22/value
        echo "0" > /sys/class/gpio/gpio17/value
        RAN=1
fi

if [ "$1" -eq "4" ]
then
        echo "1" > /sys/class/gpio/gpio27/value
        echo "1" > /sys/class/gpio/gpio24/value
        echo "1" > /sys/class/gpio/gpio23/value
        echo "1" > /sys/class/gpio/gpio18/value
        echo "0" > /sys/class/gpio/gpio17/value
        echo "0" > /sys/class/gpio/gpio4/value
        echo "0" > /sys/class/gpio/gpio22/value
        echo "0" > /sys/class/gpio/gpio25/value
        RAN=1
fi

if [ "$1" -eq "5" ]
then
        echo "1" > /sys/class/gpio/gpio25/value
        echo "1" > /sys/class/gpio/gpio23/value
        echo "1" > /sys/class/gpio/gpio24/value
        echo "1" > /sys/class/gpio/gpio18/value
        echo "1" > /sys/class/gpio/gpio4/value
        echo "0" > /sys/class/gpio/gpio27/value
        echo "0" > /sys/class/gpio/gpio22/value
        echo "0" > /sys/class/gpio/gpio17/value
        RAN=1
fi


if [ "$1" -eq "6" ]
then
        echo "1" > /sys/class/gpio/gpio18/value
        echo "1" > /sys/class/gpio/gpio4/value
        echo "1" > /sys/class/gpio/gpio24/value
        echo "1" > /sys/class/gpio/gpio22/value
        echo "1" > /sys/class/gpio/gpio23/value
        echo "1" > /sys/class/gpio/gpio25/value
        echo "0" > /sys/class/gpio/gpio27/value
        echo "0" > /sys/class/gpio/gpio17/value
        RAN=1
fi

if [ "$1" -eq "7" ]
then
        echo "1" > /sys/class/gpio/gpio25/value
        echo "1" > /sys/class/gpio/gpio27/value
        echo "1" > /sys/class/gpio/gpio18/value
        echo "0" > /sys/class/gpio/gpio17/value
        echo "0" > /sys/class/gpio/gpio4/value
        echo "0" > /sys/class/gpio/gpio24/value
        echo "0" > /sys/class/gpio/gpio22/value
        echo "0" > /sys/class/gpio/gpio23/value
        RAN=1
fi

if [ "$1" -eq "8" ]
then
        echo "1" > /sys/class/gpio/gpio27/value
        echo "1" > /sys/class/gpio/gpio24/value
        echo "1" > /sys/class/gpio/gpio23/value
        echo "1" > /sys/class/gpio/gpio22/value
        echo "1" > /sys/class/gpio/gpio25/value
        echo "1" > /sys/class/gpio/gpio18/value
        echo "1" > /sys/class/gpio/gpio4/value
        echo "0" > /sys/class/gpio/gpio17/value
        RAN=1
fi

if [ "$1" -eq "9" ]
then
        echo "1" > /sys/class/gpio/gpio27/value
        echo "1" > /sys/class/gpio/gpio25/value
        echo "1" > /sys/class/gpio/gpio24/value
        echo "1" > /sys/class/gpio/gpio23/value
        echo "1" > /sys/class/gpio/gpio18/value
        echo "1" > /sys/class/gpio/gpio4/value
        echo "0" > /sys/class/gpio/gpio22/value
        echo "0" > /sys/class/gpio/gpio17/value
        RAN=1
fi

if [ "$1" -eq "0" ]
then
        echo "1" > /sys/class/gpio/gpio27/value
        echo "1" > /sys/class/gpio/gpio25/value
        echo "1" > /sys/class/gpio/gpio23/value
        echo "1" > /sys/class/gpio/gpio22/value
        echo "1" > /sys/class/gpio/gpio4/value
        echo "1" > /sys/class/gpio/gpio18/value
        echo "0" > /sys/class/gpio/gpio17/value
        echo "0" > /sys/class/gpio/gpio24/value
        RAN=1
fi

if [ "$RAN" -eq "0" ]
then
        echo "0" > /sys/class/gpio/gpio27/value
        echo "0" > /sys/class/gpio/gpio18/value
        echo "0" > /sys/class/gpio/gpio4/value
        echo "0" > /sys/class/gpio/gpio17/value
        echo "0" > /sys/class/gpio/gpio24/value
        echo "0" > /sys/class/gpio/gpio23/value
        echo "0" > /sys/class/gpio/gpio22/value
        echo "0" > /sys/class/gpio/gpio25/value
fi

