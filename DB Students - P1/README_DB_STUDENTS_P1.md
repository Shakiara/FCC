# FreeCodeCamp - DB Students P1

Parte 1 del flujo Students: carga de datos desde CSV a PostgreSQL.

## Estructura relacionada
- Carpeta objetivo: DB Students - P1
- Archivos:
  - insert_data.sh
  - courses.csv
  - students.csv

## Comandos Bash (desde la carpeta raiz FreeCodeCamp)
1. Entrar a P1:
   cd "DB Students - P1"

2. Dar permisos y validar sintaxis:
   chmod +x insert_data.sh
   bash -n insert_data.sh

3. Ejecutar carga de datos a la base students:
   ./insert_data.sh

4. Validar resultados en SQL:
   psql --username=freecodecamp --dbname=students -c "SELECT COUNT(*) FROM students;"
   psql --username=freecodecamp --dbname=students -c "SELECT COUNT(*) FROM majors;"
   psql --username=freecodecamp --dbname=students -c "SELECT COUNT(*) FROM courses;"
   psql --username=freecodecamp --dbname=students -c "SELECT COUNT(*) FROM majors_courses;"

## Recapitulacion de comandos (lista para recordar)
- cd "DB Students - P1"
- chmod +x insert_data.sh
- bash -n insert_data.sh
- ./insert_data.sh
- psql --username=freecodecamp --dbname=students -c "SELECT COUNT(*) FROM students;"
- psql --username=freecodecamp --dbname=students -c "SELECT COUNT(*) FROM majors;"
- psql --username=freecodecamp --dbname=students -c "SELECT COUNT(*) FROM courses;"
- psql --username=freecodecamp --dbname=students -c "SELECT COUNT(*) FROM majors_courses;"

## Relacion con P2
- P1 prepara y puebla la base students.
- P2 reutiliza esa base para consultas complejas y reportes.
- Si cambias CSV o recargas en P1, vuelve a correr el script de P2 para ver datos actualizados.
