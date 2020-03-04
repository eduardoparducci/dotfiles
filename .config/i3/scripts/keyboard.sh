#!/bin/bash

current=$(setxkbmap -query | grep layout | grep -o '..$')

if [ $current == "tl" ];
then
    setxkbmap us
else
    setxkbmap -model pc104 -layout us_intl
fi

echo $current
