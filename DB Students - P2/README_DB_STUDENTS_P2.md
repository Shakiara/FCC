# FreeCodeCamp - DB Students P2

Parte 2 del flujo Students: consultas y reportes sobre la base students.

## Estructura relacionada
- Carpeta objetivo: DB Students - P2
- Archivos:
  - student_info.sh
  - students.sql
  - README.md (guia original)

## Comandos Bash (desde la carpeta raiz FreeCodeCamp)
1. Entrar a P2:
   cd "DB Students - P2"

2. Reconstruir base students desde dump (si hace falta):
   psql -U postgres < students.sql

3. Permisos y validacion del script:
   chmod +x student_info.sh
   bash -n student_info.sh

4. Ejecutar reporte principal:
   ./student_info.sh

5. Probar consultas manuales:
   psql --username=freecodecamp --dbname=students -c "SELECT first_name, last_name, gpa FROM students WHERE gpa = 4.0;"
   psql --username=freecodecamp --dbname=students -c "SELECT ROUND(AVG(gpa), 2) FROM students;"

## Recapitulacion de comandos (lista para recordar)
- cd "DB Students - P2"
- psql -U postgres < students.sql
- chmod +x student_info.sh
- bash -n student_info.sh
- ./student_info.sh
- psql --username=freecodecamp --dbname=students -c "SELECT first_name, last_name, gpa FROM students WHERE gpa = 4.0;"
- psql --username=freecodecamp --dbname=students -c "SELECT ROUND(AVG(gpa), 2) FROM students;"

## Relacion con P1
- P1 inserta datos desde CSV.
- P2 analiza esos datos con consultas SQL y joins.
- Flujo recomendado:
  1) Ejecutar P1 para cargar datos.
  2) Ejecutar P2 para validar resultados y reportes.
