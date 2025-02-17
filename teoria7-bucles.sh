#!/bin/bash

# El bucle itera palabra por palabra
for nombre in ana pedro juan ; do
  echo "$nombre"
done

echo "--------------"

# Con un contador externo
i=1
for nombre in ana pedro juan ; do
  echo "El nombre $i es $nombre"
  i=$(( $i + 1 ))
done
