#!/bin/bash

# Ejercicio 14

# Crea un shell script que haga lo siguiente:

# Si no recibe ningún parámetro mostrará un mensaje de error y terminará.
# Si recibe más de un parámetro mostrará un mensaje de error y terminará.
# Si el parámetro que recibe es --help mostrará un mensaje de ayuda y terminará.
# Si no se da ninguno de los casos anteriores mostrará un mensaje que diga si existe un fichero o directorio llamado como el primer parámetro que recibe.
# Añade los comentarios que consideres oportunos.

# SOLUCIÓN
# -------------------

# Si no recibe ningún parámetro mostrará un mensaje de error y terminará.
# Si recibe más de un parámetro mostrará un mensaje de error y terminará.
if [ $# -ne 1 ];then
  echo "Error, debe indicar exactamente un parámetro" 1>&2
  exit 1
fi

# Si el parámetro que recibe es --help mostrará un mensaje de ayuda y terminará.
if [ "$1" == "--help" ];then
  echo "USO: $0 parámetro"
  echo "Indica si existe un fichero o directorio que se llame como el parámetro"
  echo
  echo "Parámetros:"
  echo "  --help : muestra esta ayuda"
  echo "  item : indica si existe ese fichero o directorio"
  echo
  exit 0
fi

# Si no se da ninguno de los casos anteriores mostrará un mensaje que diga si existe un fichero o directorio llamado como el primer parámetro que recibe.
if [ -e "$1" ];then
  echo "Sí existe un fichero o directorio llamado $1"
else
  echo "No existe un fichero o directorio llamado $1"
fi