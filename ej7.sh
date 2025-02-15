#!/bin/bash
# Ejercicio 7
# ---------------------

# Crea un fichero con 5 números aleatorios, uno en cada línea.
# Escribe las órdenes necesarias para obtener un listado de esos números ordenados numéricamente.

echo $RANDOM > numaleat
echo $RANDOM >> numaleat
echo $RANDOM >> numaleat
echo $RANDOM >> numaleat
echo $RANDOM >> numaleat
cat numaleat | sort -n

# Escribe las órdenes necesarias para obtener un listado de
# los usuarios del sistema (sólo los login).
cat /etc/passwd | cut -d ":" -f 1

# Escribe las órdenes necesarias para obtener un listado de
# los grupos del sistema ordenados.
cat /etc/group | cut -d ":" -f 1 | sort


# Usando la orden who se puede saber quién está conectado al
# sistema. Escribe las órdenes necesarias para obtener un listado sin repeticiones de los usuarios conectados.
who | cut -d " " -f 1 | sort | uniq
