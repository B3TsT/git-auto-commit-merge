#!/bin/bash

# Cargar funciones auxiliares y configuración
. ./config.sh
. ./utils.sh

# Función para mostrar menú
show_menu() {
    echo "================================"
    echo "       🚀 GIT AUTOMÁTICO     "
    echo "================================"
    echo "1) Commits automáticos"
    echo "2) Merge automático"
    echo "3) Salir"
    echo "================================"
}

# Bucle para el menú
while true; do
    show_menu
    read -p "Selecciona una opción: " choice
    case $choice in
        1) bash commit-auto.sh ;;
        2) bash merge-auto.sh ;;
        3) echo "👋 Saliendo..."; exit 0 ;;
        *) echo "❌ Opción inválida, intenta de nuevo." ;;
    esac
done
