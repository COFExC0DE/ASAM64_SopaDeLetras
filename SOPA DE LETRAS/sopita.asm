;imprimir en pantalla
;Jose Pablo Barrientos
;%macro print  2

;	mov rax, 1      ;write

;	mov rdi, 1      ;strout

;	mov rsi, %1     ;Buffer

;    mov rdx, %2     ;Bufflen

;	syscall         ;llama al sistema para ejecutar las anteriores funciones.

;%endmacro 
;exit
%macro exit  0

    mov rax, 60    ;le dice al sisterma que ya va aterminar o a parar la funcionque este realizando

    mov rdi, 0     ;lo imprime

    syscall        ;llama al sistema para ejecutar las anteriores funciones.
%endmacro

section .bss
   
   Buffer resb 2000              ;resb 2k de memoria

   Buffer2 resb 2000             ;resb 2k de memoria

   palabra resb 20               ;resb 2k de memoria

   save_txt resb 2000            ;resb 2k de memoria

   ;cd /mnt/c/Users/JosePablo/Desktop/PROGRA_2_ARQUI/SOPA\ DE\ LETRAS/

   ; nasm -f elf64 print_scanf.asm && gcc print_scanf.o && ./a.out


section .data
             ;  0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9, 10, 11, 12, 13, 14 
    matriz:  db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;0
             db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;1
             db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;2
             db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;3
             db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;4
             db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;5
             db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;6
             db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;7
             db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;8
             db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;9
             db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;10
             db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;11
             db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;12
             db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;13
             db 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 ;14
   
   matriz_len equ $-matriz ;el largo de los signos que existen en ASCII     

   msg db 10,10,"Temas de la sopa de letras: ",10,0                 ; para las instrucciones    
   
   msg1 db 10,10,"Ingrese el tema de la sopa de letras (no ponga los parentesis): ",0   ; para las instrucciones  
   
   msg2 db 10,10,"Existe el tema! ",10,10,0                         ; para las instrucciones  

   msg3 db 10,10,"No Existe el tema! ",10,10,0                      ; para las instrucciones

   msg_error db 10,10,"A pasado un error",10,0                      ; ERROR                    

   txt db "palabras.txt",0                                          ; este es el archivo txt que va a contener todas la lista de palabras

   espacio db " ",0

   _enter_ db 10,0

    _enter_doble db 10,10,0

   format db "%s",0                                           ; STRING

   formatc db "%c",0                                          ; Char
   
   format_d db "%d",10,0                                      ; integer

   format_ran db "random %d",10,0                             ; para hacer print del random

   ;----------------------------------
   ;    TODO ESTO
   ;----------------------------------

   Buffer3: db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

   ; Buffer anterior es de 2000 bytes

   Buffer3_Len equ $ - Buffer3

   SaltoLinea db 10

   SaltoLinea_Len equ $ - SaltoLinea

   RespuestaItoA: db "................................................................................"

   RespuestaItoA_Len equ $ - RespuestaItoA ;para las respuestas.

   PalabraTemp db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

   PalabraTemp_Len equ $ - PalabraTemp

   MemoriaParaEsperar db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

   MemoriaParaEsperar_Len equ $ - MemoriaParaEsperar

   StrPalabrasABuscar: db 10,10, "PALABRAS A BUSCAR", 10,10,0        ; Imprime el Str PALABRAS A BUSCAR

   StrPalabrasEncontradas: db 10,10, "PALABRAS ENCONTRADAS", 10,10,0 ; Imprime el Str PALABRAS ENCONTRADAS

   StrBuscaPalabra: db 10,10, "Buscar palabra:",10,0

   StrPalabraEncontrada: db "    Inserte la palabra encontrada: ",0

   StrSiExistePalabra: db "        *PALABRA CORRECTA*",10,0

   StrNoExistePalabra: db "        *PALABRA INCORRECTA*",10,0

   StrTextoParaContinuar: db "-Ingrese cualquier tecla y ENTER para continuar...", 0

   StrFilaInicioPalabra: db "    Inserte fila de inicio de palabra: ",0

   StrColumnaInicioPalabra: db "    Inserte columna de inicio de palabra: ",0

   StrFilaFinalPalabra: db "    Inserte fila de final de palabra: ",0

   StrColumnaFinalPalabra: db "    Inserte columna de final de palabra: ",0

   StrSeEncontroPalabra: db 10,10, "    *** PALABRA ENCONTRADA :) ***", 10,10,0

   StrNoSeEncontroPalabra: db 10,10, "    *** PALABRA NO ENCONTRADA :( ***", 10,10,0

   StrJuegoGanado: db 10,10,10, "=======================================================", 10, "              FELICIDADES HAS GANADO", 10, "=======================================================",10,10,0

   StrPrueba: db 10,"   PRUEBA", 10,0

   FilaInicio db 0,0,0             ;resb 1 byte

   ColumnaInicio db 0,0,0          ;resb 1 byte

   FilaFinal db 0,0,0              ;resb 1 byte

   ColumnaFinal db 0,0,0           ;resb 1 byte

   ;------------
   ;    FIN
   ;------------


section .text

    global main

    extern printf                                             ;extern para llamar a printf

    extern scanf                                              ;extern para llamar a printf              

    extern rand                                               ;extern para llamar a printf


; cd /mnt/c/Users/JosePablo/Desktop/PROGRA_2_ARQUI/SOPA\ DE\ LETRAS/

; nasm -f elf64 print_scanf.asm && gcc print_scanf.o && ./a.out

VerificaGane:
    push rax

    xor rax, rax

    .Recorre:
        inc rax
    cmp byte[Buffer2 + rax], 20h
        je .Recorre
    cmp byte[Buffer2 + rax], 00h
        je .JuegoGanado
    jmp .SaleDeVerifica

    .JuegoGanado:
        mov rsi, StrJuegoGanado
        mov rdi, format
        mov rax, 0
        call printf
        jmp salir

    .SaleDeVerifica:

    pop rax
ret

;------------------------------
;   PROCEDIMIENTO
;------------------------------
; IN:
;   r11 -> (int) FilaInicio     r12 -> (int) ColumnaInicio      r13 -> (int) FilaFinal      r14 -> (int) ColumnaFinal
; OUT
;
SumaFila: ; suma fila a rax, le suma la cantidad de rbx
    cmp rbx, 0
        je .SaleSumaFila
    ._SumaFila:
    dec rbx
    add rax, 15d
    inc r11
cmp rbx, 0 ; si rbx != 0
    jne ._SumaFila
    .SaleSumaFila:
ret

SumaColumna: ; suma fila a rax, le suma la cantidad de rbx
    cmp rbx, 0
        je .SaleSumaColumna
    ._SumaColumna:
    dec rbx
    inc rax
    inc r12
cmp rbx, 0 ; si rbx != 0
    jne ._SumaColumna
    .SaleSumaColumna:
ret

BuscaEnSopaDeLetras:
    push rax
    push rbx
    push rcx
    push rdx

    xor rax, rax ; recorre matriz
    xor rbx, rbx ; cantidad de posiciones a sumar
    xor rcx, rcx ; recorre PalabraTemp
    xor rdx, rdx

    cmp r11, r13 ; si 1 y 3 son iguales es Horizontal
        je .EsHorizontal

    cmp r12, r14 ; si 2 y 4 son iguales es Vertical
        je .EsVertical

    jmp .NoExiste ; else

    .EsHorizontal:
        mov rax, r12 ; pos en MATRIZ
        mov rbx, r11 ; cantidad de filas a sumar
        call SumaFila

        mov dl, byte[matriz + rax]
        cmp byte[PalabraTemp + rcx], dl ; if (PalabraTemp[pos] != matriz[pos][pos])
            jne .NoExiste
        inc rcx
        .Horizontal:
            mov rbx, 1
            call SumaColumna
            
            mov dl, byte[matriz + rax]
        cmp byte[PalabraTemp + rcx], dl ; if (PalabraTemp[pos] == matriz[pos][pos])
            jne .NoExiste
            inc rcx
        cmp r12, r14  ; if (ColumnaInicio == ColumnaFinal)
            je .SiExiste
        jmp .Horizontal ; else


    .EsVertical:
        mov rax, r12
        mov rbx, rbx
        call SumaFila

         mov dl, byte[matriz + rax]
        cmp byte[PalabraTemp + rcx], dl ; if (PalabraTemp[pos] != matriz[pos][pos])
            jne .NoExiste
        .Vertical:
            call SumaFila
            mov dl, byte[matriz + rax]
        cmp byte[PalabraTemp + rcx], dl ; if (PalabraTemp[pos] == matriz[pos][pos])
            jne .NoExiste
        cmp r11, r13  ; if (ColumnaInicio == ColumnaFinal)
            je .SiExiste
        jmp .Vertical ; else


    .SiExiste:
        mov r15, 1
        ; Imprime string de que encontro la palabra
        mov rsi, StrSeEncontroPalabra
        mov rdi, format
        mov rax, 0
        call printf

        ; Imprime texto que indica que esta esperando la tecla ENTER
        mov rsi, StrTextoParaContinuar
        mov rdi, format
        mov rax, 0
        call printf

        ; Espera ENTER para continuar
        mov rsi, MemoriaParaEsperar
        mov rdi, format
        mov rax, 0
        call scanf

        jmp .Sale

    .NoExiste:
        mov r15, 0

        ; Imprime string de que encontro la palabra
        mov rsi, StrNoSeEncontroPalabra
        mov rdi, format
        mov rax, 0
        call printf

        ; Imprime texto que indica que esta esperando la tecla ENTER
        mov rsi, StrTextoParaContinuar
        mov rdi, format
        mov rax, 0
        call printf

        ; Espera ENTER para continuar
        mov rsi, MemoriaParaEsperar
        mov rdi, format
        mov rax, 0
        call scanf
    
    .Sale:
    pop rdx
    pop rcx
    pop rbx
    pop rax
    
ret   

;------------------------------
;   PROCEDIMIENTO
;------------------------------
; IN:
;   FilaInicio -> ColumnaInicio -> FilaFinal -> ColumnaFinal
; OUT
;   r11 -> (int) FilaInicio     r12 -> (int) ColumnaInicio      r13 -> (int) FilaFinal      r14 -> (int) ColumnaFinal
GetEnterosFilasColumnas:
    ; Limpia registros
    push rax

    xor rax, rax
    xor r11, r11
    xor r12, r12
    xor r13, r13
    xor r14, r14

    ; PARA FILAINICIO
    cmp byte[FilaInicio + 1], 0h ; Si el segundo caracter == 0
    je FilaInicioUnDigito ; entonces vaya a FilaInicioUnDigito
    jmp FilaInicioDosDigitos ; sino vaya a FilaInicioDosDigitos

    FilaInicioUnDigito: ; para cuando es un solo digito
        mov al, byte[FilaInicio] ; mueve el caracter a la parte baja de ax
        sub al, 30h ; le resta el valor del caracter para poder obtener el valor real
        mov r11, rax ; mueve a r11 el valor calculado, porque es donde se necesita retornar
        jmp TerminaFilaInicio

    FilaInicioDosDigitos: ; para cuando son 2 digitos
        mov al, byte[FilaInicio + 1] ; mueve el segundo caracter para hacer el calculo de las unidades
        sub al, 30h ; le resta el valor del caracter para poder obtener el valor real
        add al, 10d ; se le suman 10 porque el numero mayor de las decenas deberia poder ser 1
        mov r11, rax
    
    TerminaFilaInicio:
        xor rax, rax

    ; PARA COLUMNAINICIO
    cmp byte[ColumnaInicio + 1], 0h ; Si el segundo caracter == 0
    je ColumnaInicioUnDigito ; entonces vaya a ColumnaInicioUnDigito
    jmp ColumnaInicioDosDigitos ; sino vaya a ColumnaInicioDosDigitos

    ColumnaInicioUnDigito: ; para cuando es un solo digito
        mov al, byte[ColumnaInicio] ; mueve el caracter a la parte baja de ax
        sub al, 30h ; le resta el valor del caracter para poder obtener el valor real
        mov r12, rax ; mueve a r11 el valor calculado, porque es donde se necesita retornar
        jmp TerminaColumnaInicio

    ColumnaInicioDosDigitos: ; para cuando son 2 digitos
        mov al, byte[ColumnaInicio + 1] ; mueve el segundo caracter para hacer el calculo de las unidades
        sub al, 30h ; le resta el valor del caracter para poder obtener el valor real
        add al, 10d ; se le suman 10 porque el numero mayor de las decenas deberia poder ser 1
        mov r12, rax
    
    TerminaColumnaInicio:
        xor rax, rax

    ; PARA FILAFINAL
    cmp byte[FilaFinal + 1], 0h ; Si el segundo caracter == 0
    je FilaFinalUnDigito ; entonces vaya a ColumnaInicioUnDigito
    jmp FilaFinalDosDigitos ; sino vaya a ColumnaInicioDosDigitos

    FilaFinalUnDigito: ; para cuando es un solo digito
        mov al, byte[FilaFinal] ; mueve el caracter a la parte baja de ax
        sub al, 30h ; le resta el valor del caracter para poder obtener el valor real
        mov r13, rax ; mueve a r11 el valor calculado, porque es donde se necesita retornar
        jmp TerminaFilaFinal

    FilaFinalDosDigitos: ; para cuando son 2 digitos
        mov al, byte[FilaFinal + 1] ; mueve el segundo caracter para hacer el calculo de las unidades
        sub al, 30h ; le resta el valor del caracter para poder obtener el valor real
        add al, 10d ; se le suman 10 porque el numero mayor de las decenas deberia poder ser 1
        mov r13, rax
    
    TerminaFilaFinal:
        xor rax, rax

    ; PARA COLUMNAFINAL
    cmp byte[ColumnaFinal + 1], 0h ; Si el segundo caracter == 0
    je ColumnaFinalUnDigito ; entonces vaya a ColumnaInicioUnDigito
    jmp ColumnaFinalDosDigitos ; sino vaya a ColumnaInicioDosDigitos

    ColumnaFinalUnDigito: ; para cuando es un solo digito
        mov al, byte[ColumnaFinal] ; mueve el caracter a la parte baja de ax
        sub al, 30h ; le resta el valor del caracter para poder obtener el valor real
        mov r14, rax ; mueve a r11 el valor calculado, porque es donde se necesita retornar
        jmp TerminaColumnaFinal

    ColumnaFinalDosDigitos: ; para cuando son 2 digitos
        mov al, byte[ColumnaFinal + 1] ; mueve el segundo caracter para hacer el calculo de las unidades
        sub al, 30h ; le resta el valor del caracter para poder obtener el valor real
        add al, 10d ; se le suman 10 porque el numero mayor de las decenas deberia poder ser 1
        mov r14, rax
    
    TerminaColumnaFinal:
        xor rax, rax

    pop rax
ret

;------------------------------
;   PROCEDIMIENTO
;------------------------------
; IN:
;   PalabraTemp
; OUT
;   r15 -> direccion en Buffer 2 de la palabra, si es que existe
BuscaPalabraInsertada:
    push r10
    push r9
    push rax

    xor r15, r15 ; retorno de resultado
    xor r10, r10 ; recorre Buffer2
    xor r9, r9   ; recorre PalabraTemp

    BuscaInicioPalabra:
        inc r10
        xor r9, r9
    cmp byte[Buffer2 + r10], 20h ; if (Buffer2[pos] == ESPACIO)
        je BuscaInicioPalabra
    cmp byte[Buffer2 + r10], 00h ; if (Buffer2[pos] == null)
        je NoExistePalabra
    mov r15, r10 ; aqui guarda el resultado de retorno
    jmp ComparaPalabra ; else

    ComparaPalabra:
        xor rax, rax
        mov al, byte[Buffer2 + r10]
        cmp byte[PalabraTemp + r9], al ; if (PalabraTemp[Pos] == buffer2[Pos])
            je SiSonIgualesComparaPalabra
        jmp NoSonIgualesComparaPalabra ; else

        SiSonIgualesComparaPalabra:
            inc r9
            inc r10
            jmp ComparaPalabra

        NoSonIgualesComparaPalabra: ; la unica forma de que no sean iguales y que la palabra exista es que PalabraTemp[Pos] == 00h && buffer2[Pos] == 00h o ESPACIO
            ; if (PalabraTemp[Pos] == 00h && Buffer2[Pos] == ESPACIO)
            cmp byte[PalabraTemp + r9], 00h ; if (PalabraTemp[r9] == null)
                jne NoExistePalabra
            cmp byte[Buffer2 + r10], 20h ; if (buffer2[r10] == espacio)
                je SiExistePalabra
            
            ; if (PalabraTemp[Pos] == 00h && Buffer2[Pos] == 00h)
            cmp byte[PalabraTemp + r9], 00h ; if (PalabraTemp[r9] == null)
                jne NoExistePalabra
            cmp byte[Buffer2 + r10], 00h ; if (buffer2[r10] == espacio)
                je SiExistePalabra
            ; else
            jmp NoExistePalabra

    SiExistePalabra:
        mov rsi, StrSiExistePalabra
        mov rdi, format
        mov rax, 0
        call printf

        pop rax
        pop r9
        pop r10
        ret

    NoExistePalabra:
        cmp byte[Buffer2 + r10], 00h ; if (Buffer2[r10] == null)
            jne BuscaInicioPalabra
        
        ; else
        ; imprime texto de que no existe la palabra
        mov rsi, StrNoExistePalabra
        mov rdi, format
        mov rax, 0
        call printf

        ; espera entrada para continuar
        mov rsi, StrTextoParaContinuar
        mov rdi, format
        mov rax, 0
        call printf
        mov rsi, MemoriaParaEsperar
        mov rdi, format
        mov rax, 0
        call scanf

        mov r15, 0 ; le pasa 0 porque es cuando la palabra no se encontró

    pop rax
    pop r9
    pop r10
ret


;------------------------------
;   PROCEDIMIENTO
;------------------------------
; IN:
;
; OUT
;
LimpiaEntradas:
    mov byte[FilaInicio + 0], 0h
    mov byte[FilaInicio + 1], 0h
    mov byte[FilaInicio + 2], 0h
    mov byte[ColumnaInicio + 0], 0h
    mov byte[ColumnaInicio + 1], 0h
    mov byte[ColumnaInicio + 2], 0h
    mov byte[FilaFinal + 0], 0h
    mov byte[FilaFinal + 1], 0h
    mov byte[FilaFinal + 2], 0h
    mov byte[ColumnaFinal + 0], 0h
    mov byte[ColumnaFinal + 1], 0h
    mov byte[ColumnaFinal + 2], 0h
ret

;------------------------------
;   PROCEDIMIENTO
;------------------------------
; IN:
;
; OUT
;
LimpiaPalabraTemp:
    mov byte[PalabraTemp + 0], 0h
    mov byte[PalabraTemp + 1], 0h
    mov byte[PalabraTemp + 2], 0h
    mov byte[PalabraTemp + 3], 0h
    mov byte[PalabraTemp + 4], 0h
    mov byte[PalabraTemp + 5], 0h
    mov byte[PalabraTemp + 6], 0h
    mov byte[PalabraTemp + 7], 0h
    mov byte[PalabraTemp + 8], 0h
    mov byte[PalabraTemp + 9], 0h
    mov byte[PalabraTemp + 10], 0h
    mov byte[PalabraTemp + 11], 0h
    mov byte[PalabraTemp + 12], 0h
    mov byte[PalabraTemp + 13], 0h
    mov byte[PalabraTemp + 14], 0h
    mov byte[PalabraTemp + 15], 0h
ret

;------------------------------
;   PROCEDIMIENTO
;------------------------------
; IN:
;   r15 -> posicion de la palabra encontrada
; OUT
;
CambiaPalabrasDeBuffers:
    .BorraDeBuffer2:
        mov byte[Buffer2 + r15], 20h
        inc r15
    cmp byte[Buffer2 + r15], 20h
        je .ContinuaCerotin
    cmp byte[Buffer2 + r15], 00h
        je .ContinuaCerotin
    jmp .BorraDeBuffer2

    .ContinuaCerotin:
    xor r15, r15
    push rax
    push rbx
    push rcx
    xor rax, rax ; recorre PalabraTemp
    xor rbx, rbx ; contiene en parte baja lo que contiene la posicion de PalabraTemp
    xor rcx, rcx ; recorre Buffer 3
    .AgregaABuffer3:
        cmp byte[Buffer3], 00h ; si esta vacia
            je .AgregaParaPrimero
        jmp .AgregaParaSegundo_Mas ; sino
        ; Para el primero
        .AgregaParaPrimero:
            mov bl, byte [PalabraTemp + rax]
            mov byte[Buffer3 + rcx], bl
            inc rax
            inc rcx
        cmp byte[PalabraTemp + rax], 00h
            jne .AgregaParaPrimero
        jmp .salir

    .AgregaParaSegundo_Mas:
        .RecorreLaMierda:
            inc rcx
        cmp byte[Buffer3 + rcx], 00h
            jne .RecorreLaMierda
        
        ; Empieza a insertar
        mov byte[Buffer3 + rcx], 20h
        inc rcx
        .InsertaLaMierda:
            mov bl, byte[PalabraTemp + rax]
            mov byte[Buffer3 + rcx], bl
            inc rax
            inc rcx
        cmp byte[PalabraTemp + rax], 00h
            jne .InsertaLaMierda

    .salir:
    pop rcx
    pop rbx
    pop rax
ret

;------------------------------
;   PROCEDIMIENTO
;------------------------------
; IN:
; r10 -> toma r10 y lo convierte a Ascii
; OUT
; RespuestaItoA -> Imprime automaticamente el Resultado
ItoA:
    push r14
    push rax
    push rdx
    push r13
    push r15

    xor rax, rax
    xor rdx, rdx
    xor r15, r15 ; queda largo del string
    xor r13, r13
    xor r14, r14

    mov r14, 10d ; r14 -> el divisor
    mov rax, r10 ; para trabajar sobre rax

    .CuentaLargoString:
        xor rdx,rdx
        div r14
        mov r14, 10d ; reasigna por si acaso
        inc r15
    cmp rax, 0d ; si r14 (dividendo) > 0
        jg ItoA.CuentaLargoString

    mov rax, r10 ; para trabajar sobre rax
    mov r13, r15 ; guarda r15 porque se va a modificar para recorrer

    .DaRespuesta:
        xor rdx,rdx
        div r14
        mov r14, 10d ; reasigna por si acaso
        add rdx, 30h
        dec r15
        mov [RespuestaItoA + r15], dl
    cmp rax, 0d ; si rax > 0
        jg ItoA.DaRespuesta
    mov r15, r13 ; recupera el largo del string

    ; Imprime Resultado
    push rsi
    push rdx
        mov rsi, RespuestaItoA
        mov rdx, r15
        call Print
    pop rdx
    pop rsi


    pop r15
    pop r13
    pop rdx
    pop rax
    pop r14

ret

;------------------------------
;   PROCEDIMIENTO
;------------------------------
; IN:
    ; rsi -> direccion de inicio a imprimir
    ; rdx -> largo de lo que se va a imprimir 
; OUT
    
Print:
    push rax
    push rdi

    mov rax, 1 ; 1 indica que escribe en pantalla
    mov rdi, 1 ; 1 indica donde quiere escribir
    syscall

    pop rdi
    pop rax

    ret

;------------------------------
;   PROCEDIMIENTO
;------------------------------
; IN:
    
; OUT
    
ImprimeSaltoLinea: 
    push rsi
    push rdx
    mov rsi, SaltoLinea
    mov rdx, SaltoLinea_Len
    call Print
    pop rdx
    pop rsi
ret


;----------------------------------------------------------------------------------------------------
;                               INICIA EL CODIGO!!!   :D
;____________________________________________________________________________________________________

main:

   ;imprime el primer el primer msg para llevar el orden 
   mov rsi, msg         ; tiene el mensaje
  
   mov rdi, format      ; el formato para imprimir Strings ( %s)
  
   mov rax, 0           ; para hacer un write
  
   call printf          ; llamada a printf hace una llamada a la funcion de C 


;----------------------------------------------------------------------------------------------------
;                               leer de un texto plano (txt)
;____________________________________________________________________________________________________

read_txt:
    
    mov rax, 2             ; SYS_OPEN
  
    mov rdi, txt           ; name of file
  
    mov rsi, 0             ; O_RDONLY 
  
    mov rdx, 0             ; cantidad de letras    
  
    syscall                ; llamada a sistema
   
    mov rdi, rax
  
    mov rax, 0             ; SYS_READ
  
    mov rsi, save_txt      ; donde se va a guardar el texto leido
  
    mov rdx, 2000          ; cantidad maxima de letras que va a guardar en memoria
  
    syscall                ; llama al sistema para ejecutar las anteriores funciones.
 
    mov rax,3              ; SYS_CLOSE
  
    syscall                ; llama al sistema para ejecutar las anteriores funciones. 

    xor r9, r9             ; dejamos en 0 r9
  
    mov al, 00h            ; movemos a al = NULL, esto para saber el final del texto ya que lo tenemos que recorrer para obtener la informacion 

;----------------------------------------------------------------------------------------------------
;               largo texto es importante!! no tocar r9!! si lo necesita hagale push  y luego pop
;____________________________________________________________________________________________________

largo_txt:

    mov bl, [save_txt + r9]    ;guarda en bl <= letras

    inc r9                     ; le suma 1 a r9

    cmp bl, al                 ; comparar si bl = al 

    jne largo_txt              ;mientras que bl sea diferente a al jmp a largo_txt

    xor r10, r10               ;reiniciar r10

    xor r8, r8                 ;reiniciar r18

    xor al, al                 ;reiniciar al

    xor cl, cl                 ;reiniciar cl

    mov al, 5Bh                ;guardar en al [ = 5BH

    mov cl, 5Dh                ;guardar en al ] = 5DH

;----------------------------------------------------------------------------------------------------
;           imprime los temas que tiene salvados en el txt para que luego se eliga uno
;____________________________________________________________________________________________________


print_temas:
    
    mov bl, [save_txt + r10]    ; guardar una letra en bl

    cmp bl, al                  ; bl=al

    jz  espacio_print_temas     ; bl diferente de al entonces jmp print_temas

    inc r10                     ; inc r10

    cmp r9, r10                 ; r9 = r10

    jne print_temas             ; r9 diferente de r10 entonces jmp print_temas

    jmp print_los_temas         ; jmp print_los_temas


espacio_print_temas:

    mov bl,10                   ; bl = salto de linea

    mov [Buffer + r8], bl       ; movel el salto de linea al buffer

    inc r8                      ; r8 + 1

    mov [Buffer + r8], bl       ; Buffer = bl

    inc r8                      ; r8 + 1

    xor bl,bl                   ; reiniciar bl

print_temas2:
   
   mov bl, [save_txt +r10]      ; guardar en bl una letra

   mov [Buffer + r8], bl        ; mover bl al buffer para guardarlo

   inc r8                       ; incrementar

   inc r10                      ; r10 + 1

   cmp bl, cl                   ; bl = cl

   jz  print_temas              ; si bl =cl salta a printe temas sino continua

   cmp r9, r10                  ; r9 = r10

   jne print_temas2             ; en caso de que r9 y r10 sean diferentes jmp print temas

   jmp elegir_tema

print_los_temas:
   ; este es el print de C 
   mov rsi, Buffer              ; aqui va lo que se necesita imprimir

   mov rdi, format              ; aqui va el formato que se va a imprimri "format" = string, "format_d" = integer, "formatc" = char 

   mov rax, 0                   ;leer para luego imprimri

   call printf                  ;llamado a libreria de C para imprimir en pantalla

   jmp elegir_tema              ; jmp elegir tema


;----------------------------------------------------------------------------------------------------
;   Luego de ver las opciones para jugar en la sopa de letras, se tiene que escoger una opciones
;   la siguiente parte es para elegir el tema que desea jugar en la sopa de letras
;____________________________________________________________________________________________________


elegir_tema:

   mov rsi, msg1        ; aqui va lo que se necesita imprimir

   mov rdi, format      ; aqui va el formato que se va a imprimri "format" = string, "format_d" = integer, "formatc" = char 

   mov rax, 0           ; leer para luego imprimri

   call printf          ; llamado a libreria de C para imprimir en pantalla

   mov rsi, palabra     ; llamado a libreria de C para imprimir en pantalla

   mov rdi, format      ; llamado a libreria de C para imprimir en pantalla

   mov rax, 0           ; leer para luego imprimri

   call scanf           ; scanf esto es para 

   xor r10, r10         ; reiniciar r10

   xor r8,r8            ; reiniciar r8

   xor al, al           ; reiniciar al

   xor cl, cl           ; reiniciar cl

   mov cl, 5dh          ; mov cl = [

   jmp tema_elegido     ; tema_elegido


tema_elegido:

    xor r8,r8                   ; reiniciar cl

    mov bl, [save_txt + r10]    ; bl = save_txt

    inc r10                     ; r10 + 1

    mov al,5bh                  ; al = [

    cmp bl, al                  ; bl = al

    jz  ver_si_es_tema          ; bl = al

    mov al,00h                  ; al <= NULL

    cmp al, bl                  ; al = bl

    jne tema_elegido            ; en caso de que al y bl sean diferentes jmp tema_elegido

    jmp no_encontro_tema        ; jmp no_encontro_tema

ver_si_es_tema:
    
   mov bl, [save_txt +r10]      ; bl = save_txt

   mov al, [palabra +r8]        ; al = palabra

   inc r8                       ; r8 + 1

   inc r10                      ; r10 +1

   cmp bl, al                   ; bl = al

   jz  ver_si_es_tema           ; jm ver_si_es_tema

   cmp bl, cl                   ; bl = cl

   jz  encontro_tema

   cmp bl, al                   ; bl = al

   jne  tema_elegido            ; en caso de que r9 y r10 sean diferentes jmp tema_elegido

no_encontro_tema:

   mov rsi, msg3                ; llamado a libreria de C para imprimir en pantalla

   mov rdi, format              ; aqui va el formato que se va a imprimri "format" = string, "format_d" = integer, "formatc" = char 

   mov rax, 0                   ; leer para luego imprimri

   call printf                  ; llamada a printf hace una llamada a la funcion de C 

   exit                         ; salir(exit) 

encontro_tema:   

   push r10                     ; no mueba el r10 

   mov rsi, msg2                ; cargar el msg2

   mov rdi, format              ; saber el formato que va a imprimir

   mov rax, 0                   ; para leer

   call printf                  ;llama a C

   xor r8, r8                   ; reiniciar r8

   pop r10                      ; pop r10 no tocar esto sino no funciona porque r10 lo utiliza printf, es para evitar errores

   jmp guardar_palabras_tema

guardar_palabras_tema:
   
   mov al,5Bh                   ;al<=[

   mov cl,00h                   ;cl<=NULL

   mov bl, [save_txt+r10]       ;bl<=save_txt

   mov [Buffer2+r8],bl          ;buffer2 <= bl
   
   inc r8                       ; r8 + 1

   inc r10                      ; r10 + 1

   cmp bl, al                   ;bl = al

   jz  print_lista_temas        ;saltar a print_lista_temas
   
   cmp bl, cl                   ;si bl=cl saltar a print_lista_temas

   jz  print_lista_temas

   jmp guardar_palabras_tema


print_lista_temas:

    mov al,00h                  ;al <= NULL

    dec r8                      ;r8 + 1

    mov [Buffer2+r8],al         ;Buffer2 <= al
    ;imprimir Buffer2
    mov rsi, StrPalabrasABuscar
    mov rdi, format
    mov rax, 0
    call printf

    mov rsi, Buffer2            

    mov rdi, format             ;formato que va a imprimir 

    mov rax, 0                  ; leer

    call printf                 ; imprimir

    mov rsi, _enter_            ;imprimir Buffer2

    mov rdi, format

    mov rax, 0

    call printf

    jmp reiniciar_para_matriz

reiniciar_para_matriz:

    
    mov bl,"-"                  ;ESTO SOLO CONTIENE UNA a ES SOLO PARA PROBAR LA MATRIZ XD

    xor r8, r8                  ; reiniciar r8
   
    xor r14, r14                ; reiniciar r14

    xor r13, r13
    mov r13, 97
    jmp imprimir_matriz         ; jmp imprimir_matriz



;----------------------------------------------------------------------------------------------------
;                 prUeba que se pude modificar, es solo para ver q la matriz funciona XD
;____________________________________________________________________________________________________

imprimir_matriz:

   mov byte [matriz + r8], bl        ; matriz <= al
   
   inc r8                       ; r8 + 1

   cmp r8, 240                  ; r8 = 240

   jz antes_de_inicio                 ; reiniciar
   
   jmp imprimir_matriz          ; jmp imprimir_matriz


antes_de_inicio:
    mov bl, 10                  ; bl = salto 

    xor rcx, rcx                
    
    xor r10, r10                ; reiniciar r10
    
    xor r9, r9                  ; reinciar r9
   
inicio:

    mov bl, [Buffer2 + r9]
    
    cmp bl,13h                      ;13 es para salto de linea
    
    jz ouut

    cmp bl,10h                      ;10 es para salto de linea
    
    jz ouut
    
    cmp bl,20h                      ; espacios
    
    jz ouut
    
    cmp bl,0Dh                      ;enter
    
    jz ouut
    
    cmp bl,5Bh                      ;para [
    
    jz ouut
    
    mov [matriz + r10], bl          ; matriz <= al

    inc r10                         ; r10 + 1
    inc r9                          ; r9 + 1

    cmp bl,00                       ;si bl = null entonces saltar a quitar 
    jz  quitar                      ; reinicia r14 y r8

    jmp inicio                      ; jmp a inicio
   
ouut:
    inc r9                         ; r9 + 1
    inc rcx
    jmp multi1
    
quitar:

    xor r13, r13                    ; reiniciar r13
	xor r8, r8                      ; reinciar r8
	 
	a:
	 mov r13, 97                    ; mover a r13 <= 97
	 mov rcx, r13                   ; mover rcx <= r13
	 mov bl, cl                     ; mover bl<=cl
	 jmp sigue                      ; siguiente

	b:
	 mov rcx, r13                   ; mover rcx <= r13
	 mov bl, cl                     ; mover bl <= cl
	 inc r13                        ; restart r13
	 jmp sigue                      ; siguiente
	   

	rellenar:
	   mov rcx, r13                 ; rcx <= r13
	   cmp cl, 123                  ; cl <= 123
	   jz a                         ; jmp a
	   jnz b                        ; jmp b

	sigue:
       cmp byte [matriz + r8], "-"  ; si se encuentra - esta mal
       jnz mal                      ; esta mal
	   mov [matriz + r8], bl        ; matriz <= al
	mal:
	   inc r8                       ; r8 + 1

	   cmp r8, 240                  ; r8 = 240 
	   jnz rellenar                 ; jmp rellenar

    mov al,61h                      ; mov al<=61h
    dec r10
    mov [matriz + r10], al          ; matriz <= al
    jmp reiniciar

multi1:
    xor r10, r10                    ; restart r13 
    xor r11, r11                    ; restart r11
multi:
    add r10, 15                     ; sumar r10 + 15
    inc r10                         ; inc r10
    inc r11                         ; inc r11
    cmp rcx, r11                    ; rcx <= r11
    jnz multi                       ; jmp a multi
    jmp inicio                      ; jmp a inicio
    

;----------------------------------------------------------------------------------------------------
;                                           IMPRIMIR MATRIZ en orden
;____________________________________________________________________________________________________


reiniciar:

    mov rsi, StrPalabrasABuscar
    mov rdi, format
    mov rax, 0
    call printf
    mov rsi, Buffer2
    mov rdi, format
    mov rax, 0
    call printf

     mov rsi, _enter_doble        ; cargar el enter 

     mov rdi, format              ; saber el formato que va a imprimir

     mov rax, 0                   ; leer 

     call printf                  ; llamad a a C de funcion 

     xor r14, r14                ;r14
    
     jmp print_matriz_shell      ;jmp print_matriz_shell


print_matriz_shell:
   
   cmp r14, 15                  ; r14 = 15
   jz salto

   cmp r14, 31                  ; r14 = 31
   jz salto

   cmp r14, 47                  ; r14 = 47
   jz salto

   cmp r14, 63                  ; r14 = 63
   jz salto

   cmp r14, 79                  ; r14 = 79
   jz salto

   cmp r14, 95                  ; r14 = 95
   jz salto

   cmp r14, 111                 ; r14 = 111
   jz salto

   cmp r14, 127                 ; r14 = 127
   jz salto

   cmp r14, 143                 ; r14 = 143
   jz salto

   cmp r14, 159                 ; r14 = 159
   jz salto

   cmp r14, 175                 ; r14 = 175    
   jz salto

   cmp r14, 191                 ; r14 = 191
   jz salto

   cmp r14, 207                 ; r14 = 207
   jz salto

   cmp r14, 223                 ; r14 = 223
   jz salto
   
   cmp r14, 239                 ; r14 = 239
   jz salto

   mov rsi, [matriz + r14]      ; rsi <= matriz

   mov rdi, formatc             ; formato

   mov rax, 0                   ; rax = 0

   call printf                  ; call printf

   mov rsi, espacio             ; imprimir espacio

   mov rdi, format              ; formato del format

   mov rax, 0                   ; leer

   call printf                  ; llamar a a la funcion C printf

   inc r14                      ; r14 + 1

   cmp r14, 239                 ; r14 = 239

   jz Juego                     ; salir
   
   jmp print_matriz_shell       ; print_matriz_shell

salto:

   mov rsi, _enter_             ; imprime enter

   mov rdi, format              ; saber el formato que va a imprimir

   mov rax, 0                   ; rax leer

   call printf                  ; llamar a la funcion printf
   
   inc r14                      ; r14 + 1

   jmp print_matriz_shell       ; jmp print_matriz_shell

;================================================================================================
;               JUEGO
;================================================================================================
Juego:
    call LimpiaEntradas
    call LimpiaPalabraTemp
    ; Muestra StrPalabrasEncontradas encontradas
    mov rsi, StrPalabrasEncontradas
    mov rdi, format
    mov rax, 0
    call printf
    
    ; Muestra las Palabras encontradas
    mov rsi, Buffer3
    mov rdi, format
    mov rax, 0
    call printf

    ; Imprime StrBuscaPalabra
    mov rsi, StrBuscaPalabra
    mov rdi, format
    mov rax, 0
    call printf

    ; Obtiene palabra encontrada
    mov rsi, StrPalabraEncontrada
    mov rdi, format
    mov rax, 0
    call printf

    mov rsi, PalabraTemp
    mov rdi, format
    mov rax, 0
    call scanf

    call BuscaPalabraInsertada ; busca la palabra insertada para ver si existe ; devuelve en r15 la direccion en Buffer2 de la palabra, si es que existe

    cmp r15, 0 ; si la palabra no existe vuelve a entrar
        je ContinuaSiLaPalabraNoExiste 

    ; Obtiene fila de Inicio
    mov rsi, StrFilaInicioPalabra
    mov rdi, format
    mov rax, 0
    call printf
    
    mov rsi, FilaInicio
    mov rdi, format
    mov rax, 0
    call scanf

    ; Obtiene columna de inicio
    mov rsi, StrColumnaInicioPalabra
    mov rdi, format
    mov rax, 0
    call printf

    mov rsi, ColumnaInicio
    mov rdi, format
    mov rax, 0
    call scanf

    ; Obtiene fila de final
    mov rsi, StrFilaFinalPalabra
    mov rdi, format
    mov rax, 0
    call printf

    mov rsi, FilaFinal
    mov rdi, format
    mov rax, 0
    call scanf

    ; Obtiene columna de final
    mov rsi, StrColumnaFinalPalabra
    mov rdi, format
    mov rax, 0
    call printf

    mov rsi, ColumnaFinal
    mov rdi, format
    mov rax, 0
    call scanf

    ; Obtiene los valores en entero de lo obtenido anteriormente, resultados quedan en r11, r12, r13, r14
    call GetEnterosFilasColumnas
    
    ; Verifica si la palabra existe en la posicion o no

    ;call BuscaEnSopaDeLetras ; REVISAR con Jose...
    cmp r15, 0 ; if (r15 == 0) entonces la palabra no estaba en la posicion
        je ContinuaSiLaPalabraNoExiste
    call CambiaPalabrasDeBuffers

    call VerificaGane

    ContinuaSiLaPalabraNoExiste: ; hace jmp aqui luego de haber ingresado la palabra a buscar y esta no existe
    
    call reiniciar



jmp  salir
;====================
;       FIN
;====================

salir:

   mov rsi, _enter_doble        ; cargar el enter 

   mov rdi, format              ; saber el formato que va a imprimir

   mov rax, 0                   ; leer 

   call printf                  ; llamad a a C de funcion 

