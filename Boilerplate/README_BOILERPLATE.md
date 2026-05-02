# FreeCodeCamp - Boilerplate

Plantilla base para iniciar practica full stack (estructura cliente/servidor) en estilo proyecto guiado.

## Estructura relacionada
- Carpeta objetivo: Boilerplate
- Contenido principal:
  - package.json
  - server.js
  - client/src/index.js
  - client/src/styles.css

## Comandos Bash (desde la carpeta raiz FreeCodeCamp)
1. Entrar al proyecto:
   cd Boilerplate

2. Revisar archivos clave y contenido:
   ls -la
   ls -la client/src

3. Validar que Node y npm esten disponibles:
   node -v
   npm -v

4. Si luego agregas scripts en package.json, ejecutarlos asi:
   npm run start
   npm run dev

5. Servidor rapido temporal (sin modificar el proyecto):
   python -m http.server 8080

## Recapitulacion de comandos (desde ./Boilerplate/.bash_history)
- pwd
- ls
- mkdir website
- cd website
- touch index.html
- touch styles.css
- touch index.js
- touch .gitignore
- mkdir images
- cp background.jpg images
- rm background.jpg
- mkdir fonts
- mkdir client
- mkdir client/src
- mv index.html client/src
- mv index.js client/src
- mv styles.css client/src
- mkdir client/assets
- mkdir client/assets/images
- mkdir client/assets/icons
- mkdir client/assets/fonts
- touch package.json
- touch server.js
- touch README.md
- find

## Notas estilo FreeCodeCamp
- Actualmente los archivos principales estan vacios, por eso este README se enfoca en comandos de inspeccion y arranque base.
- Cuando agregues contenido, este bloque se puede extender con flujo de build y run.
