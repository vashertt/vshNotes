#!/bin/bash

if [ ! -f /home/$USER/.notes ]
  then
    touch /home/$USER/.notes;
fi
dat=`date +"%X %x"`
while getopts "a:d:" FLAG
do
  case "${FLAG}" in
    a)
      echo ${OPTARG} $dat >> /home/$USER/.notes
      ;;
    d)
      sed -i ${OPTARG}"d" /home/$USER/.notes
      ;;
    *)
      echo "Not valid"
      ;;
  esac
done
echo Current notes:
