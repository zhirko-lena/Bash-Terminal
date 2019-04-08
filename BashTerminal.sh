#! /usr/bin/env bash

clear
Menu(){
  echo -e "1. Packet manager\n0. Exit";
  read choice

}

exit=true
while [ $exit == true ]
do
  Menu;
  case $choice in
    1) echo "Packet manager"; ;;
    0) echo "Bye!"; let exit=false; ;;
    *) echo "Wrong choice!"; ;;
  esac
done
