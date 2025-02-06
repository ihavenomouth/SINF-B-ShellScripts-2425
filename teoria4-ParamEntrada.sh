#!/bin/bash

# Ejecuta este script como
# ./script.sh uno dos tres cuatro cinco seis siete ocho nueve diez once

# Queremos que nuestros scripts reaccionen a los parámetros de entrada que el
# usuario proporcione.

# Para ello se crean automáticamente una serie de variables que representan
# esos parámetros.

# Podemos acceder a esos parámetros usando $1, $2, $3, $4...
echo "Parámetro 1: $1"
echo "Parámetro 2: $2"
echo "Parámetro 3: $3"
echo "Parámetro 4: $4"
echo "Parámetro 5: $5"
echo "Parámetro 6: $6"
echo "Parámetro 7: $7"
echo "Parámetro 8: $8"
echo "Parámetro 9: $9"

# Imaginemos que se ejecuta el script como 
# ./script.sh uno dos tres cuatro cinco seis siete ocho nueve diez once
# Si intentamos usar $10 se mostrará uno0, es decir, el primer
# parámetro seguido de un 0

echo "Parámetro 10: $10"
echo "Parámetro 11: $11"

# Para evitarlo colocaremos el número entre llaves
echo "Parámetro 10: ${10}"
echo "Parámetro 11: ${11}"

echo

# La variable $0 contiene el propio nombre del script
echo "Parámetro 0: $0"

echo

# La variable $# contiene el número de parámetros que recibe el script
echo Número de parámetros: $#

echo 

# Las variables $* y $@ contiene la lista completa de parámetros del script
echo 'Parámetro $*:' "$*"  
echo 'Parámetro $@:' "$@"
