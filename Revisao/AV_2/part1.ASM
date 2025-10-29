; init_32bits

; Inicializa uma variável de 32 bits apontada por X com os valores passados em R16, R17, R18 e R19

; Parâmetros:

; R16, R17, R18, R19 : Valor que deve ser utilizado na inicialização. Sendo o R16 o byte menos significativo e o R19 o mais.

; Registrador X:Ponteiro para a posição inicial da variável. Considere o byte menos significativo armazenado no menor endereço.

; zera_32bits

; Inicializa uma variável de 32 bits com zero.

; Parâmetros:

; Registrador X : Ponteiro para a posição inicial da variável.
; sub_32bits

; Subtraia duas variáveis de 32 bits e guarde em uma terceira variável.

; Parâmetros:

; Registrador X : Ponteiro para a posição inicial da primeira variável.

; Registrador Y : Ponteiro para a posição inicial da segunda variável, a qual será subtraída da primeira.

; Registrador Z : Ponteiro para a posição inicial da terceira variável.

; Observações:

; Salve o contexto adequadamente.

; Utilize modos de endereçamento adequados para cada caso e laços de repetição, se for o caso.

.DSEG
.ORG SRAM_START
    VAR1: .BYTE 4
    VAR2: .BYTE 4
    VAR3: .BYTE 4
 
.CSEG
start:
    
    LDI R16, 0XFF
    STS VAR1+0, R16
    STS VAR1+1, R16
    STS VAR1+2, R16
    LDI R16, 0X01
    STS VAR1+3, R16
    
    LDI R16, 0X01
    STS VAR2+0, R16
    STS VAR2+1, R16
    STS VAR2+2, R16
    STS VAR2+3, R16
    
    LDI XL, LOW(VAR1)
    LDI XH, HIGH(VAR1)
    LDI YL, LOW(VAR2)
    LDI YH, HIGH(VAR2)
    LDI ZL, LOW(VAR3)
    LDI ZH, HIGH(VAR3)
    
    RCALL sub32bits
    
    RJMP start
    
sub32bits:
    ; Salva contexto
    PUSH R0
    PUSH R1
    PUSH R16
    IN R0, SREG
    PUSH R0
    
    CLC
    ; Principal
    