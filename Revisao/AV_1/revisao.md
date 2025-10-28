# Revisão

1. Qual o tamanho do barramento de endereço de uma memória com 1024 palavras? Por quê?

**R**:  10 bits, pois com essa quantia, podemos representar 2^10 = 1024 combinações diferentes

2. Quais os tamanhos dos barramentos de endereço e de dados em bits de uma memória 4096 x 16?

**R**: 12 bits e 16 bits

3. O que significa um rótulo no código Assembly.

**R**: É um marcador que identifica posições específicas no código Assembly, que é o destino para instrução de salto.

4. Se uma memória com o seguinte conteúdo for ligado ao RUDI, qual é o valor do acumulador (ACC) a cada borda de subida do clock?

| Endereço | Conteúdo    |
|----------|-------------|
| 0x00     | 010000111   | 
| 0x01     | 100000011   |
| 0x02     | 110001000   |
| 0x03     | 100001010   |
| 0x04     | 110000101   |
| 0x05     | 110000010   |
| 0x06     | 100000001   |
| 0x07     | 000XXXXXXX  |

| Operação              | OpCode |
|-----------------------|--------|
| CPU_out ← ACC         | 00     |
| ACC ← Operando        | 01     |
| ACC ← ACC + Operando  | 10     |
| ACC ← ACC - Operando  | 11     |

**R**:
ACC <- 7
ACC <- ACC + 3 = 10
ACC <- ACC - 8 = 2
ACC <- ACC + 10 = 12
ACC <- ACC - 5 = 7
ACC <- ACC - 2 = 5
ACC <- ACC + 1 = 6
CPU_out <- ACC = 6

5. Complete a tabela de sinais de controle para as instruções do processador:

**R**: 
| Mnemônico | Opcode | N | Z | WrPC | SelA1 | SelA0 | SelB | WrAcc | OpSel | RdRam | WrRam | Branch | WrNZ |
|-----------|--------|---|---|------|-------|-------|------|-------|-------|-------|-------|--------|------|
| HLT       | 0000   | X | X | 0    | X     | X     | X    | 0     | X     | 1     | 0     | 0      | 0    |
| STO       | 0001   | X | X | 1    | X     | X     | X    | 0     | X     | 0     | 1     | 0      | 0    |
| LD        | 0010   | X | X | 1    | 0     | 0     | X    | 1     | X     | 1     | 0     | 0      | 0    |
| LDI       | 0011   | X | X | 1    | 0     | 1     | X    | 1     | X     | 1     | 0     | 0      | 0    |
| ADD       | 0100   | X | X | 1    | 1     | 0     | 0    | 1     | 0     | 1     | 0     | 0      | 1    |
| ADDI      | 0101   | X | X | 1    | 1     | 0     | 1    | 1     | 0     | 1     | 0     | 0      | 1    |
| SUB       | 0110   | X | X | 1    | 1     | 0     | 0    | 1     | 1     | 1     | 0     | 0      | 1    |
| SUBI      | 0111   | X | X | 1    | 1     | 0     | 1    | 1     | 1     | 1     | 0     | 0      | 1    |
| BEQ       | 1000   | X | 1 | 1    | X     | X     | X    | 0     | X     | 1     | 0     | 1      | 0    |
| BNE       | 1001   | X | 0 | 1    | X     | X     | X    | 0     | X     | 1     | 0     | 1      | 0    |
| BGT       | 1010   | 0 | 0 | 1    | X     | X     | X    | 0     | X     | 1     | 0     | 1      | 0    |
| BGE       | 1011   | 0 | X | 1    | X     | X     | X    | 0     | X     | 1     | 0     | 1      | 0    |
| BLT       | 1100   | 1 | 0 | 1    | X     | X     | X    | 0     | X     | 1     | 0     | 1      | 0    |
| BLE       | 1101   | 1 | X | 1    | X     | X     | X    | 0     | X     | 1     | 0     | 1      | 0    |
| JMP       | 1110   | X | X | 1    | X     | X     | X    | 0     | X     | X     | 0     | 1      | 0    |

6. Converta o seguinte código C para Assembly do BIP II. Use as variáveis A, B, C e RESULTADO, todas de 8 bits.

```c
int A = 10;
int B = 3;
int C = 0;
int RESULTADO;

// Calcula A - B
C = A - B;

// Se C for maior que 5, RESULTADO = C * 2
// Senão, RESULTADO = C + 1
if (C > 5) {
    RESULTADO = C + C;  // Multiplicação por 2 usando soma
} else {
    RESULTADO = C + 1;
}

// Para o programa
```

- **R**:

```s
INIT:
    LDI 10
    STO A
    LDI 3
    STO B
    LDI 0
    STO C
CALC:
    LD A
    SUB B
    STO C
IF:
    LD C
    SUB 5
    BLE ELSE
THEN:
    LD C
    ADD C
    STO RESULTADO
    JMP END
ELSE:
    LD C
    ADDI 1
    STO RESULTADO
END:
    HLT
```

7. Converta o seguinte código C para Assembly do BIP II. Use as variáveis I, SOMA e LIMITE, todas de 8 bits.

```c
int I = 1;
int SOMA = 0;
int LIMITE = 5;

// Loop while para somar números de 1 a 5
while (I <= LIMITE) {
    SOMA = SOMA + I;
    I = I + 1;
}

// Para o programa
```

- **R**:

```s
INIT:
    LDI 1
    STO I
    LDI 0
    STO SOMA
    LDI 5
    STO LIMITE
LOOP:
    LD SOMA
    ADD I
    STO SOMA
    LD I
    ADDI 1
    STO I
IF:
    LD I
    SUB LIMITE
    BGT END
    JMP LOOP
END:
    HLT
```

8. Converta o seguinte código C para Assembly do BIP II. Use as variáveis CONTADOR e VALOR, ambas de 8 bits.

```c
int CONTADOR = 0;
int VALOR = 3;

// Loop do-while que multiplica VALOR por 2 até que seja maior que 10
do {
    VALOR = VALOR + VALOR;  // Multiplicação por 2 usando soma
    CONTADOR = CONTADOR + 1;
} while (VALOR <= 10);

// Para o programa
```

- **R**:
```s
INIT:
    LDI 0
    STO CONTADOR
    LDI 3
    STO VALOR
DO:
    LD VALOR
    ADD VALOR
    STO VALOR
    LD CONTADOR
    ADDI 1
    STO CONTADOR
WHILE:
    LD VALOR
    SUBI 10
    BGT END
    JMP DO
END:
    HLT
```

9. Considerando H, J e i variáveis de 8 bits, escreva o trecho de código abaixo utilizando o Assembly do BIP2.

```c
i = 0;
do {
    if (i==3){
        H += 2;
    } else {
        H += 1;
    }
    i++;
} while (i<6);
    J = H + 1;
// Fim do programa, pare o processador.
```

- **R**:

```s
INIT:
    LDI 0
    STO I
DO:
    LD I
    SUBI 3
    BNE ELSE
IF:
    LD H
    ADDI 2
    STO H
    JMP SUM_I
ELSE:
    LD H
    ADDI 1
    STO H
    JMP SUM_I

SUM_I:
    LD I
    ADDI 1
    STO I
WHILE:
    LD I
    SUBI 6
    BGE END
    JMP DO
END:
    LD H
    ADDI 1
    STO J
    HLT
```