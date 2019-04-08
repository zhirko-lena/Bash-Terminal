#!/usr/bin/env bash

clear
Menu(){
    echo -e "1. Install\n2. Search\n3. Remove\n4. Update\n0. Exit"
    read choice
}

Install(){
  read -p "Enter packet name => " packetName1
  yum install $packetName1
}

Search(){
  read -p "Enter packet name => " packetName2
  yum search $packetName2
}

exit=true

while [ $exit == true ]
do
  Menu;
  case $choice in
    1) Install; ;;
    0) echo "Bye!"; let exit=false; ;;
    *) echo "Wring choice!"; ;;
  esac
done