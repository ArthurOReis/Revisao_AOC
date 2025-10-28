# Memória e RUDI - Gabarito
---
1. Qual o tamanho do barramento de endereço de uma memória com 1024 palavras? Por quê?

- **Resposta**: 10 bits, pois no RUDI, as instruções têm 10 bits (4 bits para opcode + 6 bits para endereço/operando).

**Conexão com RUDI:**
- O RUDI usa 6 bits para endereçamento, permitindo endereçar 2^6 = 64 posições de memória
- Porém, a questão pergunta sobre uma memória maior (1024 palavras) que requereria um barramento de endereço maior

**Cálculo para 1024 palavras:**
- Número de palavras = 1024 = 2^10
- Portanto, precisamos de **10 bits** para representar todos os endereços (0 a 1023)

---
2. Qual o tamanho do barramento de dados de uma memória com 1024 bytes?

- **Resposta**: 8 bits, já que um byte ocupa 8 bits, logo, 2^10 = 8^8.
---
3. Além de barramentos de endereço e de dados, o que mais compõe a interface de uma memória?

- **Resposta**: Além dos barramentos de endereço e de dados, também há o barramento de controle, sendo um deles:

1. Read 
2. Write 
3. Chip Enable
4. Clock

E também sinais de alimentação, sendo eles Vcc e GND.

---
4. Quais os tamanhos dos barramentos de endereço e dados para uma Memória de 1024x16 bits?

- **Resposta**: Barramento de endereço: 10 bits (porque 1024 palavras → 2^10).
<br>Barramento de dados: 16 bits (cada palavra tem 16 bits).
---

5. Se uma memória com o seguinte conteúdo for ligado ao Rudi, qual é o valor do acumulador (ACC) a cada borda de subida do clock?

- **Resposta**: <br>``PC=0 → ACC = 7``
<br>``PC=1 → ACC = 4``
<br>``PC=2 → ACC = 12``
<br>``PC=3 → ACC = 2``
<br>``PC=4 → ACC = 7``
<br>``PC=5 → ACC = 9``
<br>``PC=6 → ACC = 8``
<br>``PC=7 → ACC = 8``
<br>``PC=8 → ACC = 8``
---

6. Considerando as instruções disponíveis no RUDI e o formato na memória, faça:

a) Desenvolva um programa para implementar a seguinte equação: 8+4-2+10-5+2+3-1

- **Resposta**: 
<br>``ACC ← 8``
<br>``ACC ← ACC + 4``
<br>``ACC ← ACC – 2``
<br>``ACC ← ACC + 10``
<br>``ACC ← ACC – 5``
<br>``ACC ← ACC + 2``
<br>``ACC ← ACC + 3``
<br>``ACC ← ACC + 1``

b) Monte o programa desenvolvido no item anterior.

- **Resposta**:

| Endereço | Instrução (binário) | OpCode | Operando | Observação |
|----------|-------------------|--------|----------|------------|
| 0x00 | 01001000 | 01 | 001000 | ACC ← 8 |
| 0x01 | 10000100 | 10 | 000100 | ACC ← ACC + 4 |
| 0x02 | 11000010 | 11 | 000010 | ACC ← ACC – 2 |
| 0x03 | 10001010 | 10 | 001010 | ACC ← ACC + 10 |
| 0x04 | 11000101 | 11 | 000101 | ACC ← ACC – 5 |
| 0x05 | 10000010 | 10 | 000010 | ACC ← ACC + 2 |
| 0x06 | 10000011 | 10 | 000011 | ACC ← ACC + 3 |
| 0x07 | 10000001 | 10 | 000001 | ACC ← ACC + 1 |