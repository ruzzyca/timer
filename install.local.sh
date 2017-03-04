#!/bin/sh

if [ ! -f /usr/bin/mpg123 ];then
    echo -e "\e[32m mpg123 not installed \033[0m (Required)"
    exit 1
  else
    echo -e "\e[32m mpg123 ok \033[0m (Required)"
  fi

if [ ! -f /usr/bin/yad ];then
    echo -e "\e[32m yad not installed \033[0m (Required)"
    exit 1
  else
    echo -e "\e[32m yad ok \033[0m (Required)"
  fi

mkdir -p ~/.local/bin
mkdir -p ~/.local/share/timer/sounds
mkdir -p ~/.local/share/timer/icons
cp local/bin/timer ~/.local/bin/
cp local/share/applications/timer.desktop ~/.local/share/applications/
sed -i "s,HOME,$HOME,g" ~/.local/share/applications/timer.desktop
cp local/share/timer/icons/alarm_clock.png ~/.local/share/timer/icons/
cp local/share/timer/sounds/timer.mp3 ~/.local/share/timer/sounds/
echo "change file timer.mp3 in $HOME/.local/share/timer/sounds/timer.mp3 for personal alarm sound"
