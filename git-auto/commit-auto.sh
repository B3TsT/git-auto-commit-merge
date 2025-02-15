#!/bin/bash

# Cargar configuración y utilidades
source config.sh
source utils.sh

# Verificar si estamos en un repositorio Git
verify_git_repo

# Pedir cantidad de commits automáticos
read -p "📌 ¿Cuántos commits deseas realizar?: " num_commits

for ((i=1; i<=num_commits; i++))
do
    echo "🔄 Modificando archivo $FILE_TO_MODIFY..."
    echo "- Cambio aleatorio $RANDOM" >> "$FILE_TO_MODIFY"
    
    git add "$FILE_TO_MODIFY"
    git commit -m "Auto-commit #$i - Modificación automática"
    
    sleep 1  # Pausa breve entre commits
done

read -p "📤 ¿Deseas hacer push? (s/n): " push_choice
if [[ "$push_choice" == "s" ]]; then
    git push origin "$(git branch --show-current)"
    echo "✅ Push realizado con éxito."
fi
