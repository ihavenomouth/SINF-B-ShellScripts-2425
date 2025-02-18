#!/bin/bash

echo "Vamos a ir probando todas las combinaciones"
echo "de passwords desde el 100 hasta el 999"

for psw in $( seq 100 999);do
  unzip -P $psw f.zip &>/dev/null
  if [ $? -eq 0 ];then
    echo "El password era $psw"
    exit 0
  fi
done

echo "El password no es un número de 3 cifras"
exit 1