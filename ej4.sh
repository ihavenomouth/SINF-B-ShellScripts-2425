#!/bin/bash

# Ejercicio 4
# ----------------------
# Crea un fichero de script que haga lo siguiente:

# Borrará la pantalla
# Mostrará el mensaje Inicio
# Irá al directorio home del usuario actual
# Creará un directorio llamado SOM en dicho directorio.
# Le cambiará los permisos al directorio SOM para que el propietario tenga todos los permisos y el grupo propietario y el resto no tenga ninguno.
# Hará que el directorio de trabajo sea el directorio SOM creado en ejercicios anteriores
# Mostrará por pantalla Creando directorios
# Creará el directorio logs y el directorio scripts dentro de SOM
# Ejecutará un ls -la dentro de SOM
# Usando redirecciones, creará un fichero llamado log.txt dentro de logs, cuyo contenido sea Fichero de logs
# Usando redirecciones, añadirá al fichero log.txt la fecha actual (ojo, añadirá al fichero, no lo sobreescribirá). Nota: para la fecha actual puedes ejecutar la orden date.
# Usando redirecciones, añadirá al fichero log.txt el mensaje Creados los directorios logs y scripts
# Mostrará por pantalla el mensaje Moviendo ficheros sh
# Moverá todos los archivos con extensión .sh de ejercicios anteriores desde el directorio SOM al directorio scripts que acabas de crear
# Usando redirecciones, añadirá al fichero log.txt el mensaje Movidos los ficheros de script
# Mostrará por pantalla el mensaje Fin



clear
echo "Inicio"

# Vamos al directorio home y creamos un directorio SOM
cd ~
mkdir SOM

# Le cambiará los permisos al directorio SOM para que el propietario tenga todos los permisos y el grupo propietario y el resto no tenga ninguno.
chmod u+rwx,g-rwx,o-rwx ./SOM

# Nos movemos a SOM
cd SOM


# Mostrará por pantalla Creando directorios
echo "Creando directorios"

# Creará los directorios logs y scripts
mkdir logs
mkdir scripts

# Ejecutará un ls -la dentro de SOM
ls -la

# Creará un fichero log.txt dentro de logs, cuyo contenido sea Fichero de logs
echo "Fichero de logs" > ./logs/log.txt

# Añadirá al fichero log.txt la fecha actual
date >> ./logs/log.txt

# Añadirá al fichero log.txt el mensaje Creados los directorios logs y scripts
echo "Creados los directorios logs y scripts" >> ./logs/log.txt

# Mostrará mensaje Moviendo ficheros sh
echo "Moviendo ficheros sh"

# Moverá los archivos .sh desde SOM a scripts
mv *.sh scripts

# Añadirá al fichero log.txt el mensaje Movidos los ficheros de script
echo "Movidos los ficheros de script" >> ./logs/log.txt

# Mostrará el mensaje Fin
echo "Fin"
