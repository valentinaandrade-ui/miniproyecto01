#Utilice las operaciones mul, sub ($t0 - $t1), sub ($t1 - $t0), div, rem, seq y sne, según corresponda.
#Use las operaciones de carga (lw) y almacenamiento de datos (sw).
#Utilice únicamente las variables en la columna datos almacenados en memoria.

#Diferencia de temperaturas. Se registran las temperaturas de dos momentos del día. 
#Calcule tanto mañana − tarde como tarde − mañana y almacene ambas diferencias.
#mañana = 22; tarde = 30
.data
dato1:      .word 22
dato2:      .word 30
resultado1: .word 0
resultado2: .word 0

.text
.globl main

main:
    # Cargar datos desde memoria
    # lw ... 
    lw $t0, dato1
    lw $t1, dato2

    # Realizar las operaciones correspondientes
    # ...
    sub $t2, $t0, $t1
    sub  $t3, $t1, $t0

    # Guardar resultados en memoria
    # sw ...
    sw $t2, resultado1
    sw $t3, resultado2

    li $v0, 0
    jr $ra
