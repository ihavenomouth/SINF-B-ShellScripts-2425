#!/bin/bash


# Ejercicio 3
# ------------------
# La orden cat muestra por pantalla el contenido de un fichero de texto.
# Por ejemplo cat prueba.txt mostrará por pantalla el contenido del fichero prueba.txt

# Crea con un editor de textos un fichero llamado prueba.txt dentro del directorio prueba que creaste en el ejercicio anterior.

# Este fichero contendrá las siguientes líneas:
# Este es un fichero de prueba.
# Pero aún así es importante.
# No debería borrarse a la ligera.

# Crea un fichero de shell script que haga lo siguiente:
#
#     Irá al directorio SOM
#     Irá al directorio pruebas dentro de SOM
#     Borrará la pantalla
#     Mostrará el mensaje Contenido de pruebas.txt
#     Mostrará el contenido del fichero pruebas.txt

# Irá al directorio SOM
# Irá al directorio pruebas dentro de SOM
cd ~/clases/SINF-B/pruebas

# Borrará la pantalla
clear

# Mostrará el mensaje Contenido de pruebas.txt
# Mostrará el contenido del fichero pruebas.txt
echo "Contenido de pruebas.txt"
cat pruebas.txt


