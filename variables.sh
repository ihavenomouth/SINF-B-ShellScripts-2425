#!/bin/bash

echo "Hola $USER"

# echo -n "Introduce tu edad: "
# read edad

# echo "Tienes $edad años"

# echo -n "Desea eliminar todos los ficheros con extensión *.bak (S/N): "
# read respuesta
# if [ "$respuesta" == "S" ] || [ "$respuesta" == "s" ];then
#   echo "Eliminando los ficheros con extensión .bak"
#   # rm *.bak
# else
#   echo "No se eliminarán los ficheros con extensión .bak"
# fi



# echo -n "Introduce tu edad: "
# read edad

# echo "Tienes $edad años"
# edadCursoSiguiente=$(( $edad + 1 ))
# echo "Y el curso que viene tendrás $edadCursoSiguiente años"

numUsuarios=$( cat /etc/passwd | wc -l )
echo "Número de usuarios del sistema: $numUsuarios"
