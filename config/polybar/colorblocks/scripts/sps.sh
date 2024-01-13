#!/bin/bash

playerctl status 2> /dev/null 1> /dev/null

if [ $? == 0 ] && [[ $(playerctl metadata --format '{{ playerName }}') != 'firefox' ]];
  then
	  if [[ $(playerctl status) != 'Stopped' ]];
      then
      	title=$(playerctl metadata title)
      	artist=$(playerctl metadata artist)

      	if [[ ${#title} > 200 ]];
          then
          	title=${title::26}...
        fi

        echo $artist - $title
      
      else
        echo ''
    fi

  else
    echo 'Music'
fi
