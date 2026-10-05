#Compare ambas temperaturas. 
#Si son diferentes, muestre “Las temperaturas son diferentes” y una de las diferencias calculadas.
#mañana = 22; tarde = 30
.data
dato1:      .word 22
dato2:      .word 30
resultado1: .word 0
resultado2: .word 0
#mensajes a mostrar en pantalla
mensaje1: .asciiz "Las dos temperaturas son diferentes.\n"
mensaje2: .asciiz "Las dos temperaturas son iguales.\n"
temperatura1: .asciiz "La temperatura en la mañana es: "
temperatura2: .asciiz "La temperatura en la tarde es: "

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

    # Comparar temperatura: si son diferentes, salta a Mensaje1
    #Si son iguales, salto a Mensaje2
    bne $t0, $t1, Mensaje1
    j Mensaje2

#Muestra mensaje1 usando syscall
Mensaje1:
    li $v0, 4           # Código syscall para imprimir un string
    la $a0, mensaje1
    syscall
    j MostrarTemp

#Muestra mensaje2 usando syscall
Mensaje2:
    li $v0, 4           # Código syscall para imprimir un string
    la $a0, mensaje2
    syscall

#Muestra las temperaturas sin importar el resultado del bne
MostrarTemp:
    #Mostrar la primera temperatura (dato1)
    li $v0, 4           
    la $a0, temperatura1
    syscall
    li $v0, 1           # Código syscall para imprimir un entero
    move $a0, $t0       # Se copia el valor de $t0 a $a0
    syscall

    # Imprimir un salto de línea para que no salgan los números pegados
    li $v0, 11          # Código syscall para imprimir un caracter
    li $a0, 10          # Código ASCII para el salto de línea (\n)
    syscall

    # Mostrar la segunda temperatura (dato2)
    li $v0, 4           
    la $a0, temperatura2
    syscall
    li $v0, 1           # Código syscall para imprimir un entero
    move $a0, $t1       # Se copia el valor de $t1 a $a0
    syscall

    # Segundo salto de línea
    li $v0, 11          
    li $a0, 10          
    syscall

Exit:
    li $v0, 0
    jr $ra
