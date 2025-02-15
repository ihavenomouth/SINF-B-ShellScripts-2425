#!/bin/bash

# Ejercicio 9

# Crea un script que haga lo siguiente:
# - Si no recibe parámetros mostrará un mensaje de error y terminará.
# - Si recibe más de un parámetro mostrará un mensaje de error y terminará. 
# - Si sólo recibe un parámetro creará un fichero que se llame como el primer parámetro que recibe.


if [ $# -eq 0 ];then
  echo "Error: debe indicar exactamente un parámetro" 1>&2
  exit 1
fi

if [ $# -gt 1 ];then
  echo "Error: debe indicar exactamente un parámetro" 1>&2
  exit 1
fi

# Si llegamos a esta línea es que tenemos exactamente un 
# parámetro

# echo -n "" > "$1"
touch "$1"

