#!/bin/bash

playerctl status 2> /dev/null 1> /dev/null

if [ $? == 0 ]
  then
  	if [[ $(playerctl status) == 'Playing' ]]
  	  then
	    echo ''
	  else
	    echo ''
	fi
  else
	echo ''
fi
