; Faça um código assembly que execute as seguintes operações:

; Declare três vetores com 8 posições de 8 bits (A1, A2 e A3) e um vetor de 3 posições de 8 bits (A4).
; Dica: utilize .DSEG e ".BYTE 8"

; Inicialize os vetores A2 e A3 com os valores de 1 até 8.
; Dica: utilize endereçamento indireto com pós incremento.
; Dica: Utilize um loop com 8 iterações.

; Some a primeira posição do A2 com a última do A3 e armazene na primeira do A1. Faça isso sucessivamente até que todas as posições sejam operadas.
; Dica: utilize endereçamento indireto com pós incremento para acessar o A1 e o A2 e endereçamento indireto com pré decremento para acessar o A3.
; Dica: Utilize um loop com 8 iterações.

; Some A2(1) e A3(4), A2(2) e A3(3), A2(6) e A3(7) e salve consecutivamente no A4.
; Dica: utilize endereçamento indireto com deslocamento para acessar o A2 e o A3 e endereçamento indireto com pós incremento para acessar o A4.
; Dica: Não utilize loop.
    
.DSEG
.ORG SRAM_START
    A1: .BYTE 8
    A2: .BYTE 8
    A3: .BYTE 8
    A4: .BYTE 3
.CSEG
 
start:
    
    LDI YL, LOW(A2)
    LDI YH, HIGH(A2)
    LDI ZL, LOW(A3)
    LDI ZH, HIGH(A3)
    
    ; Inicializa valores
    LDI R16, 1
    LDI R17, 8

; Endereçamento indireto com pós-incremento (registrador+):
; - ST Y+, Rr : Primeiro armazena o valor de Rr no endereço apontado por Y,
;               depois incrementa Y (Y = Y + 1)
; - Exemplo: Se Y = 0x100, após ST Y+, R16:
;           1. Grava R16 em [0x100]
;           2. Y passa a valer 0x101 automaticamente
loop_init:
    
    ST Y+, R16	   ; A2[i] = R16, Y++
    ; 1) Grava R16 em A2[i]
    ; 2) Y++ (aponta para próxima posição de A2)
    
    ST Z+, R16	   ; A3[i] = R16, Z++
    ; 1) Grava R16 em A3[i]
    ; 2) Z++ (aponta para próxima posição de A3)
    
    INC R16	   ; Próximo valor (1->2->3...)
    DEC R17	   ; Decrementa contador
    BRNE loop_init ; Repete se contador não zero
    
    ; Após o loop:
    ; - Y terá avançado 8 posições (aponta para depois de A2)
    ; - Z terá avançado 8 posições (aponta para depois de A3)
    ; - A2 e A3 conterão: 1,2,3,4,5,6,7,8 em posições consecutivas
    
    ; Recarregar ponteiros para nova operação
    LDI XL, LOW(A1)
    LDI XH, HIGH(A1)
    LDI YL, LOW(A2)
    LDI YH, HIGH(A2)
    
    ; Z -> A3 + 8 (última posição + 1 de A3)
    LDI ZL, LOW(A3+8)
    LDI ZH, HIGH(A3+8)
    
    LDI R17, 8	; Contador = 8 itera��es
    
loop_soma:
    LD R16, Y+	   ; Lê A2[i], avança Y
    LD R18, -Z	   ; Primeiro decrementa Z, depois lê A3[7-i]
    ADD R16, R18   ; R16 = A2[i] + A3[7-i]
    ST X+, R16	   ; A1[i] = soma, avança X
    
    DEC R17	   ; Decrementa contador
    BRNE loop_soma ; Repete se contador não zero
; Após este loop:
; A1[0] = A2[0] + A3[7]
; A1[1] = A2[1] + A3[6]
; A1[2] = A2[2] + A3[5]...

    LDI XL, LOW(A4)
    LDI XH, HIGH(A4)
    LDI YL, LOW(A2)
    LDI YH, HIGH(A2)
    LDI ZL, LOW(A3)
    LDI ZH, HIGH(A3)
    
    ; Primeira soma: A2(1) + A3(4)
    LDD R16, Y+1      ; Carrega A2[1]
    LDD R17, Z+4      ; Carrega A3[4]
    ADD R16, R17      ; R16 = A2[1] + A3[4]
    ST X+, R16        ; Guarda em A4[0] e avança

    ; Segunda soma: A2(2) + A3(3)
    LDD R16, Y+2      ; Carrega A2[2]
    LDD R17, Z+3      ; Carrega A3[3]
    ADD R16, R17      ; R16 = A2[2] + A3[3]
    ST X+, R16        ; Guarda em A4[1] e avança

    ; Terceira soma: A2(6) + A3(7)
    LDD R16, Y+6      ; Carrega A2[6]
    LDD R17, Z+7      ; Carrega A3[7]
    ADD R16, R17      ; R16 = A2[6] + A3[7]
    ST X+, R16        ; Guarda em A4[2] e avança

    RJMP start