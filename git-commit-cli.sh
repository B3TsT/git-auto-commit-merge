#!/bin/bash

# Verifica si Git está instalado
if ! command -v git &> /dev/null
then
    echo "❌ Git no está instalado. Instálalo y vuelve a intentarlo."
    exit 1
fi

# Verifica si estamos en un repositorio de Git
if ! git rev-parse --is-inside-work-tree &> /dev/null
then
    echo "❌ No estás dentro de un repositorio de Git."
    exit 1
fi

# Solicitar mensaje de commit
read -p "📝 Escribe el mensaje del commit: " commit_message

# Verificar si el mensaje no está vacío
if [[ -z "$commit_message" ]]; then
    echo "❌ El mensaje del commit no puede estar vacío."
    exit 1
fi

# Agregar archivos al staging
git add .

# Realizar commit
git commit -m "$commit_message"

# Preguntar si desea hacer push
read -p "📤 ¿Deseas hacer push? (s/n): " push_choice

if [[ "$push_choice" == "s" ]]; then
    # Obtener la rama actual
    current_branch=$(git rev-parse --abbrev-ref HEAD)
    git push origin "$current_branch"
    echo "✅ Código subido a GitHub en la rama $current_branch."
else
    echo "✅ Commit realizado, pero no se ha hecho push."
fi
