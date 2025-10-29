; duplica_16bits
; Duplica uma variável de 16 bits apontada por X e armazena o resultado em Y
;
; Parâmetros:
; Registrador X: Ponteiro para a posição inicial da variável fonte
; Registrador Y: Ponteiro para a posição onde será armazenado o resultado
; 
; soma_16bits
; Soma duas variáveis de 16 bits e armazena em uma terceira posição
;
; Parâmetros:
; Registrador X: Ponteiro para a primeira variável
; Registrador Y: Ponteiro para a segunda variável
; Registrador Z: Ponteiro para onde será armazenado o resultado
;
; Observações:
; - Salve o contexto adequadamente
; - Considere o byte menos significativo no menor endereço
; - Utilize modos de endereçamento adequados

.DSEG
.ORG SRAM_START
    NUM1: .BYTE 2      ; Primeira variável de 16 bits
    NUM2: .BYTE 2      ; Segunda variável de 16 bits
    RESULTADO: .BYTE 2  ; Variável para armazenar resultado

.CSEG
start:
    ; Inicializa Stack Pointer
    LDI R16, HIGH(RAMEND)
    OUT SPH, R16
    LDI R16, LOW(RAMEND)
    OUT SPL, R16

    ; Inicializa primeira variável com 1000 (0x03E8)
    LDI R16, 0xE8
    STS NUM1+0, R16    ; Byte baixo
    LDI R16, 0x03
    STS NUM1+1, R16    ; Byte alto

    ; Inicializa segunda variável com 500 (0x01F4)
    LDI R16, 0xF4
    STS NUM2+0, R16    ; Byte baixo
    LDI R16, 0x01
    STS NUM2+1, R16    ; Byte alto

    ; Configura ponteiros para duplicar NUM1
    LDI XL, LOW(NUM1)
    LDI XH, HIGH(NUM1)
    LDI YL, LOW(RESULTADO)
    LDI YH, HIGH(RESULTADO)
    RCALL duplica_16bits

    ; Configura ponteiros para somar NUM1 e NUM2
    LDI XL, LOW(NUM1)
    LDI XH, HIGH(NUM1)
    LDI YL, LOW(NUM2)
    LDI YH, HIGH(NUM2)
    LDI ZL, LOW(RESULTADO)
    LDI ZH, HIGH(RESULTADO)
    RCALL soma_16bits

    RJMP start

; Sub-rotina: duplica_16bits
duplica_16bits:
    ; Salva contexto
    PUSH R16
    PUSH R17
    IN R16, SREG
    PUSH R16

    ; Carrega bytes e duplica
    LD R16, X+         ; Carrega byte baixo
    LD R17, X          ; Carrega byte alto
    
    LSL R16            ; Multiplica por 2 (byte baixo)
    ROL R17            ; Multiplica por 2 (byte alto) com carry

    ; Armazena resultado
    ST Y+, R16         ; Armazena byte baixo
    ST Y, R17          ; Armazena byte alto

    ; Restaura contexto
    POP R16
    OUT SREG, R16
    POP R17
    POP R16
    RET

; Sub-rotina: soma_16bits
soma_16bits:
    ; Salva contexto
    PUSH R16
    PUSH R17
    PUSH R18
    IN R16, SREG
    PUSH R16

    ; Carrega e soma bytes baixos
    LD R16, X+         ; Primeiro número - byte baixo
    LD R17, Y+         ; Segundo número - byte baixo
    ADD R16, R17       ; Soma bytes baixos
    ST Z+, R16         ; Armazena byte baixo do resultado

    ; Carrega e soma bytes altos com carry
    LD R16, X          ; Primeiro número - byte alto
    LD R17, Y          ; Segundo número - byte alto
    ADC R16, R17       ; Soma bytes altos com carry
    ST Z, R16          ; Armazena byte alto do resultado

    ; Restaura contexto
    POP R16
    OUT SREG, R16
    POP R18
    POP R17
    POP R16
    RET
