; Exercício 4 - Instruções Modo Imediato e Dois Registradores
; Objetivo: Praticar diferentes instruções de modo imediato e operações entre registradores
;
; Tarefas:
; 1. Modo Imediato:
;    a) Use LDI para carregar R16 com 0x5A
;    b) Use ANDI para manter apenas os 4 bits menos significativos de R16
;    c) Use ORI para setar o bit mais significativo de R16
;    d) Use SUBI para subtrair 5 do valor em R16
;
; 2. Dois Registradores:
;    a) Use MOV para copiar R16 para R17
;    b) Use ADD para somar R16 com R17, resultado em R18
;    c) Use EOR R17,R17 para zerar R17
;    d) Use OR R18,R16 para fazer OR entre R18 e R16
;
; Dicas:
; - ANDI mantém apenas os bits que são 1 na máscara
;   Exemplo: ANDI R16, 0x0F mantém apenas os 4 bits menos significativos
;
; - ORI força bits específicos para 1
;   Exemplo: ORI R16, 0x80 seta o bit mais significativo
;
; - EOR de um registrador com ele mesmo sempre resulta em zero
;   Exemplo: EOR R17,R17 é uma forma eficiente de zerar R17
;
; Resultado esperado:
; - Observe como cada instrução afeta os registradores
; - Use o simulador para verificar o estado dos bits após cada operação

start:
    ; 1. Modo Imediato
    LDI R16, 0x5A        ; Carrega 0x5A (01011010 em binário)
    ANDI R16, 0x0F       ; Mantém apenas os 4 bits menos significativos (0000xxxx)
    ORI R16, 0x80        ; Seta o bit mais significativo (1xxxxxxx)
    SUBI R16, 5          ; Subtrai 5 do valor
    
    ; 2. Dois Registradores
    MOV R17, R16         ; Copia R16 para R17
    MOV R18, R16         ; Move R16 para R18
    ADD R18, R17         ; R18 = R18 + R17
    EOR R17, R17         ; Zera R17 (É possível também usar `CLR R17`)
    OR R18, R16          ; R18 = R18 OR R16

fim:
    RJMP start             ; Loop infinito