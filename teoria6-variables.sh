#!/bin/bash

# Crearemos las variables en minúsculas.
edad=43
nombre="Javier Mancera"

# Recuperamos el valor de las varaibles con el $
echo "Hola $nombre, tienes $edad años"

echo -n "Introduce tu color preferido: "
read color
echo "Tu color preferido es $color"
echo "Tu sabor preferido es $sabor"


echo "Vamos a eliminar todos los ficheros con extensión jpg"
echo -n "¿Deseas continuar? S/N: "
read eleccion

if [ "$eleccion" == "S" ] || [ "$eleccion" == "s" ];then
  echo "Eliminando los ficheros jpg"
  rm *.jpg
else
  echo "No se eliminará ningún fichero jpg"
fi


####################################
# Asignar valores a una variable
####################################
valor=5
echo "Valor inicial: $valor"

# Para asignar a una variable el resultado de una operación
# aritmética usaremos $(( operación ))

valor=$(( $valor * 3 ))
echo "El triple es $valor"

# Para asignar a una variable el resultado de ejecutar una
# orden, usaremos $( orden )
numUsuarios=$( cat /etc/passwd | wc -l )
echo "En el sistema hay $numUsuarios usuarios"
