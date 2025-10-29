; Exercício 5 - Modos de Endereçamento na SRAM
; Objetivo: Praticar diferentes modos de endereçamento para acessar a memória SRAM
;
; Tarefas:
; 1. Declare na memória SRAM:
;    - Um vetor 'numeros' com 4 bytes
;
; 2. Usando Endereçamento Direto:
;    - Use LDS para carregar valor 5 em R16
;    - Use STS para guardar R16 em numeros[0]
;
; 3. Usando Endereçamento Indireto (com X):
;    - Configure X para apontar para numeros[1]
;    - Use LD para carregar o valor em R17
;    - Incremente R17
;    - Use ST para guardar R17 de volta
;
; 4. Usando Endereçamento Indireto com Pós-Incremento (com Y):
;    - Configure Y para apontar para numeros[0]
;    - Use ST Y+ três vezes para guardar os valores 1,2,3
;
; 5. Usando Endereçamento Indireto com Pré-Decremento (com Z):
;    - Configure Z para apontar para numeros[3]
;    - Use LD -Z duas vezes para ler valores em ordem reversa
;
; Dicas:
; - Para configurar os ponteiros X, Y, Z:
;   * XH (R27) e XL (R26)
;   * YH (R29) e YL (R28)
;   * ZH (R31) e ZL (R30)
;
; - Use HIGH() e LOW() para separar endereços em bytes
;
; - Lembre-se:
;   * LD Rd, X    - Carrega dado do endereço X
;   * ST X, Rr    - Guarda dado no endereço X
;   * LD Rd, X+   - Carrega e incrementa X
;   * ST X+, Rr   - Guarda e incrementa X
;   * LD Rd, -X   - Decrementa X e carrega
;   * ST -X, Rr   - Decrementa X e guarda

.DSEG
.ORG SRAM_START         ; Começamos em SRAM_START na SRAM
    numeros: .BYTE 4    ; Reserva 4 bytes

.CSEG                   ; Segmento de código começa aqui

start:
    ; 2. Endereçamento Direto usando LDS/STS
    LDI R16, 5              ; Carrega valor inicial
    STS numeros, R16        ; Guarda diretamente em numeros[0]
    LDS R17, numeros        ; Lê diretamente de numeros[0]

    ; 3. Endereçamento Indireto com deslocamento (LDD/STD)
    LDI YH, HIGH(numeros)   ; Configura base Y
    LDI YL, LOW(numeros)
    LDI R16, 2             ; Novo valor para numeros[1]
    STD Y+1, R16           ; Guarda em Y+1 (numeros[1])
    LDD R17, Y+1           ; Lê de Y+1 (numeros[1])

    ; 4. Endereçamento Indireto com Pós-Incremento (com Y)
    LDI YL, LOW(numeros)    ; Configura Y para apontar para numeros[0]
    LDI YH, HIGH(numeros)
    LDI R16, 1             ; Valor inicial = 1
    LDI R17, 3             ; Contador = 3 iterações

loop_store:
    ST Y+, R16            ; Guarda R16 em [Y] e incrementa Y
    INC R16               ; Incrementa o valor a ser guardado
    DEC R17               ; Decrementa o contador
    BRNE loop_store      ; Se contador não é zero, continua loop

    ; 5. Endereçamento Indireto com pré-decremento (LD/ST com -)
    LDI XH, HIGH(numeros+4) ; Configura X para fim do vetor + 1
    LDI XL, LOW(numeros+4)
    LD R16, -X             ; Lê último valor (pré-decremento)
    LD R17, -X             ; Lê penúltimo valor (pré-decremento)

    ; Exemplo adicional: Leitura/Escrita direta em endereços específicos
    STS numeros+3, R16     ; Escreve diretamente em numeros[3]
    LDS R18, numeros+2     ; Lê diretamente de numeros[2]

fim:
    RJMP start           ; Loop infinito