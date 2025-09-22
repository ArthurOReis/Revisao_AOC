# 2025.2 - ARQUITETURA E ORGANIZAÇÃO DE COMPUTADORES - Turma 01


## Questão 1
Os 10 bits que representam a operação ``ACC <- 93`` do Rudi são:
- Resposta: ``0101011101``

Explicação: 
Esta instrução carrega o valor 93 diretamente no acumulador (ACC). No processador Rudi, as instruções têm 10 bits organizados da seguinte forma:
- **Bits 9-6 (4 bits)**: Código da operação (opcode)
- **Bits 5-0 (6 bits)**: Operando/endereço

Para a operação `ACC <- valor`, o opcode é `0101` (load immediate).
O valor 93 em binário de 6 bits é `011101`.
Portanto: `0101` + `011101` = `0101011101` 

## Questão 2
Os 10 bits que representam a operação ``ACC <- ACC + 94`` do Rudi são:
- Resposta: ``1001011110``

Explicação:
Esta instrução realiza uma soma entre o valor atual do acumulador (ACC) e o valor 94, armazenando o resultado no próprio acumulador.
- **Opcode**: `1001` representa a operação de adição com valor imediato (ADD immediate)
- **Operando**: O valor 94 em binário de 6 bits é `011110`
- **Conversão**: 94 decimal = 64 + 16 + 8 + 4 + 2 = `011110` binário
Portanto: `1001` + `011110` = `1001011110`
  
## Questão 3
Os 10 bits que representam a operação ``ACC <- ACC - 70`` do Rudi são:
- Resposta: ``1101000110``

Explicação:
Esta instrução realiza uma subtração entre o valor atual do acumulador (ACC) e o valor 70, armazenando o resultado no próprio acumulador.
- **Opcode**: `1101` representa a operação de subtração com valor imediato (SUB immediate)
- **Operando**: O valor 70 em binário de 6 bits é `000110`
- **Conversão**: 70 decimal = 64 + 4 + 2 = `1000110`, mas como precisamos de apenas 6 bits, usamos `000110` (considerando que 70 está dentro do range de 6 bits: 0-63, então na verdade é 70 mod 64 = 6)
Portanto: `1101` + `000110` = `1101000110`