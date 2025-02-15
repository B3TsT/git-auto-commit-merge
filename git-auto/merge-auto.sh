#!/bin/bash

# Cargar configuración y utilidades
source config.sh
source utils.sh

# Verificar si estamos en un repositorio Git
verify_git_repo

# Pedir nombre de la nueva rama
read -p "🌿 Ingresa el nombre de la nueva rama: " branch_name

# Crear y cambiar a la nueva rama
git checkout -b "$branch_name"

# Modificar el archivo de forma aleatoria
echo "🔧 Realizando cambios en $FILE_TO_MODIFY en la rama $branch_name..."
echo "- Cambio en la rama $branch_name: $RANDOM" >> "$FILE_TO_MODIFY"

# Commit de la modificación
git add "$FILE_TO_MODIFY"
git commit -m "Auto-commit en la rama $branch_name"

# Volver a la rama principal
main_branch=$(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')
git checkout "$main_branch"

# Fusionar la nueva rama
git merge "$branch_name" --no-edit

# Preguntar si desea hacer push
read -p "📤 ¿Deseas hacer push? (s/n): " push_choice
if [[ "$push_choice" == "s" ]]; then
    git push origin "$main_branch"
    echo "✅ Merge subido con éxito."
fi

# Borrar la rama fusionada
git branch -d "$branch_name"
