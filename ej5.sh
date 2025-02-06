#!/bin/bash
# Ejercicio 5

# Crea un fichero de script que haga lo siguiente:

#     Mostrará el mensaje Creación de fichero personal
#     Creará un fichero usando variables de entorno y redirecciones con la
#     siguiente información (pero con los datos del usuario actual)
#         Usuario: paco
#         Ordenador: PC-paco
#         UID del usuario: 1001
#         Fecha: <<fecha del día>>
#     Finalmente añadirá el mensaje Creado el fichero personal al fichero
#     log.txt que se encuentra en el directorio logs
#     Añade los comentarios que consideres oportunos


echo "Creación de fichero personal"

# Generamos el fichero
echo "Usuario: $USER" > ficheropersonal.info
echo "Ordenador: $HOSTNAME" >> ficheropersonal.info
echo "UID del usuario: $UID" >> ficheropersonal.info
echo -n "Fecha: " >> ficheropersonal.info
date +%d/%m/%Y >> ficheropersonal.info

# Añadimos información al fichero de log
echo "Creado el fichero personal" >> pruebas/logs/log.txt