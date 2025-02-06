#!/bin/bash

# Filtros y tuberías
# -------------------
# Las tuberías son probablemente el mecanismo más interesante e ingenioso
# que se ha creado en los sistemas operativos.
# Básicamente consiste en usar la salida de una orden como entrada de la
# siguiente.
#
# Por ejemplo:
cat /etc/passwd | more

# Sabemos que cat muestra el contenido de un fichero, pues en lugar de
# mostrarlo por pantalla el contenido será tratado por la orden more

# Las tuberías son en realidad ficheros temporales y se indican con el
# símbolo | (AltGr + 1).

# Mediante tuberías podemos ir filtrando, ordenando o manipulando la
# información que nos proporciona una orden para quedarnos  con la parte
# que nos interese o directamente modificarla para que se adapte a nuestras
# necesidades.

# Por ejemplo:
# cuenta el número de directorios no ocultos
ls -l | tail -n +2 | cut -c1 | grep "d" | wc -l

# Algunos filtros interesantes son: tail, head, less, more, cut, tr, grep, sort, awk, sed...

# -------------------
# HEAD
# -------------------
# Muestra las primeras 10 líneas de un fichero
cat /etc/passwd | head

# Muestra las primeras 3 líneas de un fichero
cat /etc/passwd | head -n 3

# Muestra las líneas de un fichero salvo las 3 últimas
cat /etc/passwd | head -n -3

# -------------------
# TAIL
# -------------------
# Muestra las últimas 10 líneas de un fichero
cat /etc/passwd | tail

# Muestra las últimas 3 líneas de un fichero
cat /etc/passwd | tail -n 3

# Muestra las líneas de un fichero a partir de la línea 3
cat /etc/passwd | tail -n +3

# -------------------
# nl
# -------------------
# Numera las líneas
cat /etc/passwd | nl

# -------------------
# tr
# -------------------
# Cambia las ocurrencias del primer grupo por ocurrencias del segundo
echo "Hola caracola" | tr "aeiou" "12345"

# Elimina las ocurrencias del primer grupo, en el ejemplo elimina las vocales
echo "Hola caracola" | tr -d "aeiou"

# Elimina las ocurrencias repetidas del grupo, en el ejemplo de abajo se
# mostrará "Hola caracola"
echo "Holaaaa caaaaraaaacolaaaa" | tr -s "a"


# -------------------
# cut
# -------------------
# Sólo muestra los caracteres que están en la posición 1 y 3
echo "Hola caracola" | cut -c 1,3

# Sólo muestra el primer caracter y los caracteres que están entre las
# posiciones 3 y 8, en el ejemplo "Hla car"
echo "Hola caracola" | cut -c 1,3-8

# Sólo muestra los caracteres que están entre las
# posiciones 3 y el final, en el ejemplo "la caracola"
echo "Hola caracola" | cut -c 3-

# Usando ; como delimitador, muestra el primer campo y el tercero y luego 
# cambia los ; por espacio es blanco, en el ejemplo "1 1200€"
echo "1;Javier;1200€;j@j.es" | cut -d ";" -f 1,3 | tr ";" " "

# Usando ; como delimitador, muestra los campos a partir del segundo y luego
# cambia los ; por espacio es blanco, en el ejemplo "Javier 1200€ j@j.es"
echo "1;Javier;1200€;j@j.es" | cut -d ";" -f 2- | tr ";" " "

# -------------------
# sort
# -------------------
# Muestra del contenido del fichero /etc/passwd el primer campo ordenado
# alfabéticamente (de la "a" a la "z")
cat /etc/passwd | cut -d ":" -f 1 | sort

# Muestra del contenido del fichero /etc/passwd el primer campo ordenado
# en orden alfabético inverso (de la "z" a la "a")
cat /etc/passwd | cut -d ":" -f 1 | sort -r

# Muestra del contenido del fichero /etc/passwd el tercer campo ordenado
# numéricaente. Repite la orden sin el -n
cat /etc/passwd | cut -d ":" -f 3 | sort -n

# -------------------
# grep
# -------------------
# La orden grep permite buscar las líneas que contengan el patrón de búsqueda
# que se indique (una expresión regular)

# Muestra del contenido del fichero /etc/passwd las líneas que contengan la
# palabra "usr/sbin"
cat /etc/passwd | grep "usr/sbin"

# Muestra del contenido del fichero /etc/passwd las líneas que comiencen por
# la palabra "bin"
cat /etc/passwd | grep "^bin"

# Muestra del contenido del fichero /etc/passwd las líneas que terminen por
# la palabra "bash"
cat /etc/passwd | grep "bash$"

# Muestra del contenido del fichero /etc/passwd las líneas que contengan 
# un diptongo
cat /etc/passwd | grep "[aeiou][aeiou]"

# Muestra del contenido del fichero /etc/passwd las líneas que contengan 
# una "e" seguida de cualquier caracter y luego un ":"
cat /etc/passwd | grep "e.:"

# Con egrep y grep -E podemos usar expresiones regulares extendidas y utilizar
# símbolos como a? .* a{3}

# Si necesitamos no sólo la línea que cumpla el patrón, sino también algunas
# más de contexto podemos usar -A n (after) y -B n (before), en el 
# ejemplo podemos se mostrarán las líneas del fichero que empiece por 
# javier y además las tres líneas siguientes y las dos anteriores
cat /etc/passwd | grep "^javier:" -A3 -B2

