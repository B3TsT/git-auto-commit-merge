#!/bin/bash

# Función para verificar si estamos en un repositorio Git
verify_git_repo() {
    if ! git rev-parse --is-inside-work-tree &> /dev/null; then
        echo "❌ No estás dentro de un repositorio de Git."
        exit 1
    fi
}
