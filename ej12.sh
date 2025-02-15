#!/bin/bash

# Ejercicio 12

# Sabiendo que en el archivo /etc/passwd está la información de los usuarios del sistema escribe un shell script que haga lo siguiente:

# Si no recibe ningún parámetro o recibe más de uno mostrará un mensaje de error y terminará.
# Si recibe un parámetro comprobará:
#     Si el primer parámetro es -list mostrará el listado de los usuarios del sistema.
#     Si el primer parámetro coincide con el login del usuario actual mostrará su información (usa la orden id loginusuario).
#     Si no se da ninguno de los casos anteriores mostrará el mensaje Error, no se muestra información de otros usuarios y terminará.
# Añade los comentarios que consideres oportunos.

# SOLUCIÓN
# --------------------------------

# Si no recibe ningún parámetro o recibe más de uno mostrará un mensaje de error y terminará.
if [ $# -ne 1 ];then
  echo "Error, debe indicar exactamente un parámetro" 1>&2
  exit 1
fi

# Si el primer parámetro es -list mostrará el listado de los usuarios del sistema.
if [ "$1" == "-list" ];then
  cat /etc/passwd | cut -d ":" -f 1
  exit 0
fi

# Si el primer parámetro coincide con el login del usuario actual mostrará su información (usa la orden id loginusuario).
if [ "$1" == "$USER" ];then
  id $USER
  exit 0
fi

# Si no se da ninguno de los casos anteriores mostrará el mensaje Error, no se muestra información de otros usuarios y terminará.
echo "Error, no se muestra información de otros usuarios" 1>&2
exit 2
