# FreeCodeCamp - DB Cuerpos Celestes

Proyecto SQL de universo con tablas de galaxias, estrellas, planetas, lunas y cometas.

## Estructura relacionada
- Carpeta objetivo: DB Cuerpos Celestes
- Archivos:
  - universe.sql
  - insert_data.sh
  - courses.csv
  - students.csv

## Comandos Bash (desde la carpeta raiz FreeCodeCamp)
1. Entrar a la carpeta:
   cd "DB Cuerpos Celestes"

2. Crear/recrear la base con el dump:
   psql -U postgres < universe.sql

3. Entrar a PostgreSQL y revisar base/tablas:
   psql --username=freecodecamp --dbname=universe
   \dt

4. Consultas utiles:
   psql --username=freecodecamp --dbname=universe -c "SELECT COUNT(*) FROM galaxy;"
   psql --username=freecodecamp --dbname=universe -c "SELECT COUNT(*) FROM star;"
   psql --username=freecodecamp --dbname=universe -c "SELECT COUNT(*) FROM planet;"
   psql --username=freecodecamp --dbname=universe -c "SELECT COUNT(*) FROM moon;"
   psql --username=freecodecamp --dbname=universe -c "SELECT COUNT(*) FROM comet;"

5. Comprobar script y permisos:
   chmod +x insert_data.sh
   bash -n insert_data.sh

## Recapitulacion de comandos (lista para recordar)
- cd "DB Cuerpos Celestes"
- psql -U postgres < universe.sql
- psql --username=freecodecamp --dbname=universe
- \dt
- psql --username=freecodecamp --dbname=universe -c "SELECT COUNT(*) FROM galaxy;"
- psql --username=freecodecamp --dbname=universe -c "SELECT COUNT(*) FROM star;"
- psql --username=freecodecamp --dbname=universe -c "SELECT COUNT(*) FROM planet;"
- psql --username=freecodecamp --dbname=universe -c "SELECT COUNT(*) FROM moon;"
- psql --username=freecodecamp --dbname=universe -c "SELECT COUNT(*) FROM comet;"
- chmod +x insert_data.sh
- bash -n insert_data.sh

## Notas estilo FreeCodeCamp
- universe.sql ya incluye estructura y datos.
- Si usas insert_data.sh, valida primero que apunte a la base correcta para evitar mezclar datos.
