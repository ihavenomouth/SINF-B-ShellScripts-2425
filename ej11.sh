#!/bin/bash

# Ejercicio 11

# Crea un shell script que haga lo siguiente:

# Si no recibe ningún parámetro mostrará un mensaje de error y terminará.
# Si recibe 1, 2 o 3 parámetros mostrará por pantalla el último parámetro que ha recibido y terminará.
# Si recibe 4 o más parámetros mostrará un mensaje de error y terminará.
# Añade los comentarios que consideres oportunos.

if [ $# -eq 0 ];then
  echo "Error: debe indicar al menos un parámetro" 1>&2
  exit 1
fi

if [ $# -ge 4 ];then
  echo "Error: debe indicar como máximo tres parámetros" 1>&2
  exit 2
fi

# Si llegamos a esta línea es que hay 1, 2 o 3 parámetros
if [ $# -eq 1 ];then
  echo $1
elif [ $# -eq 2 ];then
  echo $2
else
  echo $3
fi
