@ A simple Cipher with ARM Assembly
@E/11/024

	.text
	.global main

main:
	sub	sp, sp, #4
	str	lr, [sp, #0]


	ldr	r0, =encrpt   		@  For Encrypt or Decrypt
	bl	printf	


	ldr	r0, =en_num			
	sub	sp, sp, #1			@ scanf("%s", <stack_pointer>)
	mov	r1, sp
 	bl	scanf
 	@mov	r5, r1



	ldr	r0, =nwln   		@  For Encrypt or Decrypt
	bl	printf	

 	ldr	r0, =plntxt 		@ Plaintext 
 	bl	printf				

	ldr	r0, =format			
	sub	sp, sp, #40			
	mov	r1, sp
	@mov	r1, sp
	bl	scanf
@	mov r6,r1

	ldr	r0, =Key_msg 		@ Key for cipher 
	bl	printf	

	ldr	r0, =key			
	sub	sp, sp, #4			@ scanf("%d", <stack_pointer>)
	@
	bl	scanf	



							
	ldr	r0, =cyptxt			@ printf("%s", <stack_pointer>)
	mov	r1, sp
	bl	printf

	add	sp, sp, #8			@ release the stack space used for string
	

	ldr	lr, [sp, #0]
	add	sp, sp, #4
	mov	pc, lr				@ return 

	.data
encrpt : .asciz "Encrypt(E) or Decrypt (D) ? \n"
en_num : .asciz "%c"
nwln   : .asciz "%c\n"
plntxt : .asciz "Plaintext ?  \nEncrypt (E) or Decrypt (D) "
format : .asciz "%s"
Key_msg: .asciz "Key ?"
key    : .asciz "%d \n"
cyptxt : .asciz "cipertext is %s \n "