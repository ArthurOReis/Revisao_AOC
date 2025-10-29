; Exercício 5 - Modos de Endereçamento na SRAM
; Objetivo: Praticar diferentes modos de endereçamento para acessar a memória SRAM
;
; Tarefas:
; 1. Declare na memória SRAM:
;    - Um vetor 'numeros' com 4 bytes iniciando em 0x100
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
.ORG 0x100              ; Começamos em 0x100 na SRAM
    numeros: .BYTE 4    ; Reserva 4 bytes

.CSEG                   ; Segmento de código começa aqui

start:
    ; Seu código aqui
    ; Boa sorte!
