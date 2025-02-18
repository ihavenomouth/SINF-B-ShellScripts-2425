#!/bin/bash

# FUNCIONES

# Las funciones se declaran como nombre(){} o function nombre(){}
# y se llaman con el nombr sin paréntesis

# function saludo(){
#   echo "Hola $USER"
# }
# saludo

# Tenemos la palabra reservada return para salir de una función
# function saludo(){
#   echo "Hola $USER"
#   return
#   echo "Adiós" # Esta línea no se ejecutará nunca
# }
# saludo

# Se devuelven los valors que se impriman por la pantalla
# function getNumeroAleatorio(){
#   echo $RANDOM
# }

# num=$( getNumeroAleatorio )
# echo "El número que se ha generado es $num"



############################################

# Crea un shell script que se comporte así:
# - Si el primer parámetro es --help mostrará la ayuda
# - Si recibe más de un parámetro, mostrará un mensaje de error y terminará
# - Si recibe menos de un parámetro, mostrará un mensaje de error y terminará
# - Si el primer parámetro es -n que muestre el número de usuarios del sistema
# - Si el primer parámetro es -l que muestre el listado de los usuarios del sistema
# - En otro caso, mostrará un mensaje de error y terminará
# - Añade los comentarios que consideres oportunos


# PARÁMETROS DE UNA FUNCIÓN
# function ayuda(){
#   echo "USO: $0 parámetro"
#   echo "Muestra información de los usuarios del sistema"
#   echo
#   echo "Parámetros:"
#   echo "   --help : muestra esta ayuda"
#   echo "   -n     : muestra el número de usuarios del sistema"
#   echo "   -l     : muestra un listado de usuarios del sistema"
#   echo
#   exit 0
# }


# function error(){
#   echo "Error $1" 1>&2

#   case $1 in
#     1) echo "El número de parámetros no puede ser superior a 1" 1>&2;;
#     2) echo "El número de parámetros no puede ser 0" 1>&2;;
#     3) echo "El parámetro es incorrecto" 1>&2;;
#   esac

#   echo
#   echo "Con --help obtendrá una ayuda" 1>&2

#   exit $1
# }


# if [ $# -eq 0 ]; then
#   error 2
# fi

# if [ $# -gt 1 ]; then
#   error 1
# fi

# if [ "$1" == "--help" ];then
#   ayuda
# fi

# if [ "$1" == "-n" ];then
#   numUsuarios=$( cat /etc/passwd | wc -l )
#   echo "Nº de usuarios del sistema: $numUsuarios"
#   exit 0
# fi

# if [ "$1" == "-l" ];then
#   echo "5 primeros usuarios del sistema:"
#   echo "--------------------------------"
#   cat /etc/passwd | head -n 5
#   exit 0
# fi

# error 3




####### EVALUACIÓN PEREZOSA #############


function ayuda(){
  echo "USO: $0 parámetro"
  echo "Muestra información de los usuarios del sistema"
  echo
  echo "Parámetros:"
  echo "   --help : muestra esta ayuda"
  echo "   -n     : muestra el número de usuarios del sistema"
  echo "   -l     : muestra un listado de usuarios del sistema"
  echo
  exit 0
}


function error(){
  echo "Error $1" 1>&2

  case $1 in
    1) echo "El número de parámetros no puede ser superior a 1" 1>&2;;
    2) echo "El número de parámetros no puede ser 0" 1>&2;;
    3) echo "El parámetro es incorrecto" 1>&2;;
  esac

  echo
  echo "Con --help obtendrá una ayuda" 1>&2

  exit $1
}

function numUsuariosDelSistema(){
  numUsuarios=$( cat /etc/passwd | wc -l )
  echo "Nº de usuarios del sistema: $numUsuarios"
  exit 0
}

function listadoUsuarios(){
  echo "5 primeros usuarios del sistema:"
  echo "--------------------------------"
  cat /etc/passwd | head -n 5
  exit 0
}



[ $# -eq 0 ] && error 2
[ $# -gt 1 ] && error 1
[ "$1" == "--help" ] && ayuda
[ "$1" == "-n" ] && numUsuariosDelSistema
[ "$1" == "-l" ] && listadoUsuarios

error 3