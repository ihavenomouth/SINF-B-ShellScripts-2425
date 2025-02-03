#!/bin/bash

# Redirecciones
# -----------------------

# Las redirecciones consisten en un mecanismo por el que la salida
# estándar de una orden de Linux (o Windows si estamos usándolo)
# se puede redirigir a un fichero de texto.

# Por ejemplo:

echo "Hola caracola" # Muestra el mensaje por la pantalla
echo "Hola caracola" > fichero.txt # Guarda el mensaje en el fichero fichero.txt

# Existen dos tipos de redirecciones:
# - Redirecciones simples (>)
# - Redirecciones dobles (>>)



# La redirección simple funciona así:
# Si el fichero no existe, lo crea con la salida de la orden
# Si el fichero existe, lo sobreescribe (perdiendo el contenido anterior)

rm fichero.txt       # borramos el fichero.txt para que no exista
date > fichero.txt   # se crea el fichero con la fecha actual
ls -la > fichero.txt # se sobreescribe el fichero con el listado



# La redirección doble funciona así:
# Si el fichero no existe, lo crea con la salida de la orden
# Si el fichero existe, añade la salida de la orden al final del fichero

rm fichero.txt        # borramos el fichero.txt para que no exista
date >> fichero.txt   # se crea el fichero con la fecha actual
ls -la >> fichero.txt # se añade el listado al final del fichero

