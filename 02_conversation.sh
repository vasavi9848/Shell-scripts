#!/bin/bash

country1=India
country2=USA
if [ "$country1" == "India" ];
 then
    echo "I am from India"
else
    echo "I am not from India"
fi
echo "I am from $country1 and I have visited $country2"