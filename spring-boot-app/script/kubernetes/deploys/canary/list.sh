#!/bin/bash

# Define an array with your specific values
values=(20 50 100)

# Iterate over the array
for i in "${values[@]}"
do
   echo "Current value: $i"
   # Add your commands here, using $i as the current value
done
