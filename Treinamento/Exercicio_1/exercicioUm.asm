; Exercício 1 - Fundamentos
; Objetivo: Carregar valores em registradores e fazer uma soma simples
; 
; 1. Carregar o valor 5 no registrador R16
; 2. Carregar o valor 3 no registrador R17
; 3. Somar R16 com R17 e armazenar o resultado em R18

start:
    
    LDI R16, 5        ; Carrega 5 em R16
    LDI R17, 3        ; Carrega 3 em R17
    MOV R18, R16      ; Move o valor de R16 para R18
    ADD R18, R17      ; Soma R17 com R18, resultado fica em R18

end:
    RJMP start          ; Loop infinito