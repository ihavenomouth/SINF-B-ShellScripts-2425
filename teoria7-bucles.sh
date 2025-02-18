#!/bin/bash

# El bucle itera palabra por palabra
# for nombre in ana pedro juan ; do
#   echo "$nombre"
# done

# echo "--------------"


# for nombre in $( ls *.txt) ; do
#   echo "$nombre"
#   if [ "$nombre" == "$1" ];then
#     echo "----> El archivo $1 ha sido encontrado" 
#   fi
# done



# Con un contador externo
# i=1
# for nombre in ana pedro juan ; do
#   echo "El nombre $iº es $nombre"
#   i=$(( $i + 1 ))
# done


# for i in 1 2 3 4 5 6 7 8 9 10;do
#   echo "borrar"
# done


# La tabla de multiplicar del 7
# for operando in $( seq 1 10 ) ;do
#   mult=$(( 7 * $operando ))
#   echo "7 x $operando = $mult"
# done


###################### BUCLES WHILE ############

# Los bucles while se ejecutan mientras la condición sea cierta
# Hay que tener cuidado con los bucles infinitos

# i=1
# while [ $i -le 20 ];do
#   echo "$i"
#   i=$(( $i + 1 ))
# done


# for j in $( seq 1 3 );do

#   i=1
#   while [ $i -le 6 ];do
#     echo -n "$i "
#     i=$(( $i + 1 ))
#     sleep 1
#   done

#   # vlc ring.mp3
#   echo
#   echo "      MINUTO TERMINADO"
# done


######## CORRECTOR ORTOGRÁFICO ########
# for palabra in $( cat texto.txt );do
#   encontrada="no"

#   for p in $(cat dicc.txt);do
#     if [ "$p" == "$palabra" ];then
#       encontrada="si"    
#     fi
#   done

#   if [ "$encontrada" == "si" ];then
#     echo -n "$palabra "
#   else
#     echo -n "·$palabra· "
#   fi
# done




total=0

while read linea;do
  tam=$( echo $linea | cut -d " " -f5 )
  total=$(( $total + $tam ))

done < listado.txt

echo "Los ficheros y directorios de este directorio ocupan estos bytes"
echo "Tamaño total: $total bytes"
