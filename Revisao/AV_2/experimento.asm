.DEF temp = r19
.EQU CONST = 22

; Experimento: R18 = R16 + R17 + 22
; Presume-se que R16 e R17 já contenham os valores de entrada

.CSEG
.ORG 0x0000
rjmp start

start:
    ; Copia R16 para R18 (preserva R16)
    mov r18, r16    ; r18 = r16

    ; Soma R17 em R18
    add r18, r17    ; r18 = r18 + r17

    ; Carrega a constante e soma
    ldi temp, CONST ; temp = 22
    add r18, temp   ; r18 = r18 + 22

    ; Resultado final está em r18 (mod 256). Flags afetadas conforme a soma.

done:
    rjmp done       ; laço infinito - ponto seguro para inspecionar registradores no simulador
