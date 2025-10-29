; Exercício 3 - Diretivas e Memória
; Objetivo: Trabalhar com diferentes segmentos de memória e endereçamento
;
; Tarefas:
; 1. Declare na memória RAM:
;    - Uma variável 'contador' de 1 byte
;    - Um vetor 'valores' de 4 bytes
;
; 2. Declare na memória de programa (Flash):
;    - Uma constante com valor 5
;    - Uma constante com valor 10
;
; 3. Faça um programa que:
;    a) Carregue as constantes em R16 e R17
;    b) Some as constantes e guarde em R18
;    c) Armazene o resultado na variável 'contador'
;    d) Use endereçamento indireto com Y para guardar 
;       os valores 1,2,3,4 no vetor 'valores'
;
; Dicas:
; - Use .DSEG e .BYTE para declarar variáveis na RAM
; - Use .CSEG e .DB para declarar constantes na Flash
; - Use .ORG SRAM_START para definir início da RAM
; - Use .EQU para dar nomes às constantes
; - Para acessar o vetor, configure Y com:
;   * LDI YH, HIGH(valores)
;   * LDI YL, LOW(valores)
; - Use ST Y+, Rn para armazenar com pós-incremento
;
; Estrutura básica:
;.DSEG                   ; Início do segmento de dados (RAM)
;.ORG SRAM_START        ; Define início da RAM
;    contador: .BYTE 1   ; Reserva 1 byte para 'contador'
;    valores: .BYTE 4    ; Reserva 4 bytes para 'valores'
;
;.CSEG                   ; Início do segmento de código (Flash)
;.EQU CONST1 = 5        ; Define constante CONST1 com valor 5
;.EQU CONST2 = 10       ; Define constante CONST2 com valor 10

.EQU CONST1 = 5
.EQU CONST2 = 10

.DSEG
.ORG SRAM_START
    contador: .BYTE 1
    valores: .BYTE 4
    
.CSEG

start:
    
    LDI R16, CONST1
    LDI R17, CONST2
    MOV R18, R16
    ADD R18, R17
    
    ; Armazena soma no contador
    LDI XL, LOW(contador)
    LDI XH, HIGH(contador)
    ST X, R18

    ; Configura Y para apontar para o vetor 'valores'
    LDI YL, LOW(valores)
    LDI YH, HIGH(valores)

    ; Armazena valores 1,2,3,4 no vetor
    LDI R16, 1
    ST Y+, R16         ; valores[0] = 1
    LDI R16, 2
    ST Y+, R16         ; valores[1] = 2
    LDI R16, 3
    ST Y+, R16         ; valores[2] = 3
    LDI R16, 4
    ST Y+, R16         ; valores[3] = 4

fim:
    RJMP start           ; Loop infinito