; Exercício 2 - Operações Aritméticas e Comparações
; Objetivo: Realizar operações aritméticas e tomar decisões baseadas no resultado
; 
; Tarefas:
; 1. Carregar o valor 10 no registrador R16
; 2. Carregar o valor 7 no registrador R17
; 3. Subtrair R17 de R16 (R16 - R17) e guardar em R18
; 4. Se o resultado for maior que 2:
;    - Carregar 1 em R19
; 5. Senão:
;    - Carregar 0 em R19
;
; Dicas:
; - Para subtrair, você precisará primeiro mover o valor para o destino (como fizemos com MOV no ex. 1)
;   e depois usar SUB para subtrair
; - Para comparar um valor com 2, você pode:
;   * Carregar 2 em um registrador temporário (por exemplo, R20)
;   * Usar CP para comparar (CP compara dois registradores)
; - Após a comparação, use BRGE (Branch if Greater or Equal) para tomar a decisão
; - Você precisará criar labels (como 'maior:' ou 'menor:') para os desvios
; - Não se esqueça do loop infinito no final!

start:
    LDI R16, 10
    LDI R17, 9
    MOV R18, R16
    SUB R18, R17
    CPI R18, 2
    BRLT menor

    LDI R19, 1
    RJMP fim

menor:
    LDI R19, 0

fim:
    RJMP start