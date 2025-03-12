
.section .data
.mensaje: .asciz "%ld \n"

.section .text
.global main
.extern printf	     # Indico que quiero utilizar printf de libc

main:
	mov $4, %rax   # rax = 4
	mov $5, %rbx   # rbx = 5
	add %rbx, %rax  # rax = rax + rbx

	# Bloque de impresión
	# printf("%ld \n", rax);
	# rdi, rsi
	
	mov $.mensaje, %rdi  # Cargar la dirección del mensaje en %rdi
	mov %rax, %rsi       # Pasar el valor a imprimir
	mov $rax, %rax         # Limpiar %rax para printf (función variádica)
	call printf

	mov $60, %rax  # Indico que vamos a usar la función sys_exit
	mov $0, %rdi   # Indico que el parámetro tiene un valor de 0
	syscall        # Llamar a la función del sistema
