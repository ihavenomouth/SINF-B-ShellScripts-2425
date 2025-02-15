#!/bin/bash

# Ejemeplo de condicionales

if [ "$1" == "-n" ] ; then
  echo "Número de usuarios del sistema: "
  cat /etc/passwd | wc -l
  exit 0
elif [ "$1" == "-root" ];then
  echo "El UID del usuario root"
  cat /etc/passwd| grep "^root:" | cut -d ":" -f 3
  exit 0
else
  echo "Error: no ha indicado un parámetro correcto"
  echo "       -n  muestra el número de usuarios"
  echo "       -root muestra el UID del usuario root"
  exit 1
fi

