# 🚀 Git Auto: Automatización de Commits y Merges en GitHub

Este proyecto es un **script de automatización** que facilita el proceso de commits y merges en repositorios Git, eliminando la necesidad de escribir comandos manualmente. 

---

## 📌 **¿Qué incluye este README?**
✔️ Explicación del proyecto  
✔️ Instalación y uso paso a paso  
✔️ Licencia MIT  
✔️ Descargo de responsabilidad  
✔️ Cómo contribuir  

Este **README.md** es ideal para documentar el proyecto de forma clara y profesional. 🚀

## 📌 Características
✔️ **Commits automáticos**: Modifica archivos y realiza commits según la cantidad definida por el usuario.  
✔️ **Merges automáticos**: Crea ramas, modifica archivos, las fusiona y elimina la rama temporal.  
✔️ **Menú interactivo**: Permite seleccionar fácilmente la acción a ejecutar.  
✔️ **Opción de push automático**: Permite enviar los cambios a GitHub al finalizar la tarea.  

## 📂 Estructura del Proyecto
```bash
/git-auto
│── git-auto.sh          # Script principal (menú)
│── commit-auto.sh       # Genera commits automáticos
│── merge-auto.sh        # Crea ramas, modifica archivos y hace merge
│── config.sh            # Archivo de configuración (nombre del archivo a modificar)
│── utils.sh             # Funciones auxiliares
```


## 📜 Requisitos
Antes de ejecutar el script, asegúrate de cumplir con los siguientes requisitos:

- **Sistema operativo**: Linux o macOS (puede funcionar en Windows con Git Bash)
- **Git instalado**: Puedes verificarlo con:
  ```bash
  git --version
- **Acceso a un repositorio Git**: Debes estar dentro de un repositorio de Git. (lo dejare por defecto en publico)


## 🚀 Instalación y Uso

### 1️⃣ Clonar un repositorio de GitHub (o usar uno existente)
Si aún no tienes un repositorio, clónalo:
```bash
git clone <URL_DEL_REPO>
cd <NOMBRE_DEL_REPO>
```

### 2️⃣ Crear el directorio y los scripts
```bash
mkdir git-auto && cd git-auto
touch git-auto.sh commit-auto.sh merge-auto.sh config.sh utils.sh autocommit.md
```
### 3️⃣ Copiar los archivos en cada script
Pega el contenido de los scripts en sus respectivos archivos (git-auto.sh, commit-auto.sh, etc.).

### 4️⃣ Dar permisos de ejecución
```bash
chmod +x git-auto.sh commit-auto.sh merge-auto.sh
```
### 5️⃣ Ejecutar el menú
```bash
./git-auto.sh
```
Selecciona la opción que desees y sigue las instrucciones.

## ⚙️ Configuración
El archivo config.sh permite definir el archivo que será modificado durante los commits y merges.

Ejemplo:
```bash
FILE_TO_MODIFY="autocommit.md"
```
Puedes cambiar "autocommit.md" por el archivo que prefieras modificar automáticamente.

## 🔥 Ejemplo de Uso
Ejecutando git-auto.sh:
```bash
./git-auto.sh
```
1️⃣ Selecciona 1) Commits automáticos.

2️⃣ Ingresa 5 (para hacer 5 commits).

3️⃣ Responde s para hacer push.

🎉 ¡Tus commits estarán en GitHub sin esfuerzo!

## 🔖 Licencia
Este proyecto está bajo la Licencia MIT, lo que significa que puedes modificarlo, distribuirlo y usarlo libremente.
```bash
MIT License

Copyright (c) 2025

Se otorga permiso, sin cargo, a cualquier persona que obtenga una copia de este software y los archivos de documentación asociados, para utilizar el software sin restricción, incluyendo sin limitación los derechos de usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar y/o vender copias del software.
```

## ⚠️ Descargo de Responsabilidad
- Este script modifica archivos y realiza cambios en un repositorio Git, úsalo con precaución.
- No se recomienda su uso en producción sin pruebas previas.
- Se recomienda hacer copias de seguridad de los archivos antes de ejecutarlo.
- No nos hacemos responsables de posibles pérdidas de datos.

# 🙌 Contribuciones
Si deseas mejorar este proyecto, ¡tus contribuciones son bienvenidas! Puedes hacer un fork, enviar un pull request o abrir un issue en GitHub.

🚀 ¡Feliz programación y automatización de Git! 🎉

