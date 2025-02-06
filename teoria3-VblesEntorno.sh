#!/bin/bash

# Una variable de entorno contiene información sobre el
# sistema operativo, el usuario que está ejecutando el script,
# las condiciones sobre las que se está ejecutando el script.

# En linux las variables de entorno están creadas por el sistema
# y su nombre comienza por $, además suelen estar en mayúsculas.

# Ejemplos:

# $USER     contiene el login del usuario que ejecuta el script
# $HOSTNAME contiene el nombre de la máquina
# $RANDOM   devuelve un número aleatorio
# $PATH     contiene las rutas donde se buscan las órdenes
# $UID      contiene el identificado del usuario que ejecuta el script
# $?        contiene el código con el que terminó la última orden ejecutada

# Para mostrar por pantall el valor de una variable de entorno podemos
# ejecutar un echo:
echo "$USER"
echo "$HOSTNAME"
echo "$UID"
echo "$RANDOM"


# Si queremos mostrar el valor dentro de una cadena de caracteres usaremos
# comillas dobles.
echo "Hola $USER"  # imprimirá Hola Javier

# Con comillas simples se imprimirá directamente la cadena de caracteres
# sin cambiar la variable de entorno por su valor.
echo 'Hola $USER'  # imprimirá Hola $USER


echo '$USER     contiene el login del usuario que ejecuta el script'
echo '$HOSTNAME contiene el nombre de la máquina'
echo '$RANDOM   devuelve un número aleatorio'
echo '$PATH     contiene las rutas donde se buscan las órdenes'
echo '$UID      contiene el identificado del usuario que ejecuta el script'
echo '$?        contiene el código con el que terminó la última orden ejecutada'

