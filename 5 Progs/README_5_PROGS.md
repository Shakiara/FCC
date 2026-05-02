# FreeCodeCamp - 5 Progs

Mini colección de scripts Bash para practicar entrada/salida, condicionales, bucles y ejecución encadenada.

## Estructura relacionada
- Carpeta objetivo: 5 Progs
- Scripts:
  - bingo.sh
  - countdown.sh
  - five.sh
  - fortune.sh
  - questionnaire.sh

## Comandos Bash (desde la carpeta raiz FreeCodeCamp)
1. Entrar a la carpeta:
   cd "5 Progs"

2. Dar permisos de ejecución a todos los scripts:
   chmod +x *.sh

3. Ejecutar cada script por separado:
   ./questionnaire.sh
   ./countdown.sh 5
   ./bingo.sh
   ./fortune.sh

4. Ejecutar el flujo completo:
   ./five.sh

5. Verificar sintaxis Bash sin ejecutar:
   bash -n *.sh

6. Ejecutar con modo debug:
   bash -x five.sh

## Recapitulacion de comandos (lista para recordar)
- cd "5 Progs"
- chmod +x *.sh
- ./questionnaire.sh
- ./countdown.sh 3
- ./bingo.sh
- ./fortune.sh
- ./five.sh
- bash -n *.sh
- bash -x five.sh

## Notas estilo FreeCodeCamp
- countdown.sh requiere un entero positivo como argumento.
- five.sh depende de que los otros scripts tengan permisos y esten en la misma carpeta.
