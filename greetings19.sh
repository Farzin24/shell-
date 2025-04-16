#!/bin/bash

# Get the current hour
hour=$(date +"%H")

# Display the appropriate greeting based on the time of day
if [ $hour -ge 5 ] && [ $hour -lt 12 ]; then
    echo "Good Morning"
elif [ $hour -ge 12 ] && [ $hour -lt 17 ]; then
    echo "Good Afternoon"
elif [ $hour -ge 17 ] && [ $hour -lt 21 ]; then
    echo "Good Evening"
else
    echo "Good Night"
fi

