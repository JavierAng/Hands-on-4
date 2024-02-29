#!/bin/bash

# Función para listar el contenido de un fichero o carpeta
listar_contenido() {
    read -p "Introduce la ruta absoluta al fichero o carpeta: " ruta
    ls "$ruta"
}

# Función para crear un archivo de texto con una línea de texto
crear_archivo() {
    read -p "Introduce la cadena de texto para almacenar en el archivo: " texto
    echo "$texto" > miarchivo.txt
    echo "Archivo creado: miarchivo.txt"
}

# Función para comparar dos archivos de texto
comparar_archivos() {
    read -p "Introduce el primer archivo: " archivo1
    read -p "Introduce el segundo archivo: " archivo2
    diff "$archivo1" "$archivo2"
}

# Menú de opciones
while true; do
    echo "1. Listar contenido de un fichero o carpeta"
    echo "2. Crear un archivo de texto"
    echo "3. Comparar dos archivos de texto"
    echo "4. Mostrar uso de 'awk'"
    echo "5. Mostrar uso de 'grep'"
    echo "0. Salir"
    read -p "Elige una opción: " opcion

    case $opcion in
        1) listar_contenido ;;
        2) crear_archivo ;;
        3) comparar_archivos ;;
        4) echo "Uso de 'awk': awk 'patrón {acción}' archivo" ;;
        5) echo "Uso de 'grep': grep 'patrón' archivo" ;;
        0) echo "Hasta luego"; exit ;;
        *) echo "Opción inválida" ;;
    esac
done
