# Exercícios sobre a programação do BIP 
## Conjunto de instruções do BIP 

![Tabela de instruções opcode](assets/tabela.png)

### 1. Comente cada linha dos códigos a seguir, conforme exemplificado no primeiro exercício. 

![Primeiro exercício](assets/primeiro_exercicio.png)

![Exercício dois](assets/exercicio_2.png)
- Resposta:<br> ``ACC = 0`` <br> ``(A) = ACC``

![Exercício três](assets/exercicio_3.png)
- Resposta:<br> ``ACC = 0`` <br> ``(A) = ACC`` <br> ``(B) = ACC``

![Exercício quatro](assets/exercicio_4.png)
- Resposta:
<br>``LDI; 2; ACC = 2`` 
<br>``STO; A; (A) = ACC`` 
<br>``LDI; 1; ACC = 1`` 
<br>``STO; B; (B) = ACC`` 
<br>``LD; A; ACC = A`` 
<br>``SUB; B; ACC = ACC - B`` 
<br>``SUBI; 1; ACC = ACC - 1`` 
<br>``ADDI; 3; ACC = ACC + 3`` 
<br>``STO; C; (C) = ACC``

### 2. Converta os códigos a seguir escritos em linguagem C para a linguagem de montagem do BIP, respeitando o estilo de codificação de programação em assembly e posicionando mnemônicos, operandos e comentários nas colunas apropriadas.

![Exercício cinco](assets/exercicio_5.png)
- Resposta:
<br> ``LDI; 1; ACC = 1``
<br> ``STO; X; (X) = ACC``
<br> ``LD; X; ACC = (X)``
<br> ``STO; X; (Y) = ACC``


![Exercício seis](assets/exercicio_6.png)
- Resposta:
<br>``LDI; 0; ACC = 0``
<br>``STO; X; (X) = ACC``
<br>``LD; X; ACC = (X)``
<br>``ADDI; 1; ACC = ACC + 1``
<br>``STO; X; (X) = ACC``


![Exercício sete](assets/exercicio_7.png)
- Resposta:
<br>``LDI; 0; ACC = 0``
<br>``STO; X ; (X) = ACC``
<br>``LDI; 2; ACC = 2``
<br>``STO; Y ; (Y) = ACC``
<br>``ADD; X; ACC = ACC + X``
<br>``STO; X; (X) = ACC``


![Exercício oito](assets/exercicio_8.png)
- Resposta:
<br>``LDI; X; ACC = (X)``
<br>``SUB; Y; ACC = ACC - Y``
<br>``SUBI; 1; ACC = ACC - 1``
<br>``STO; Y; (Y) = ACC``

### 3. Dados os códigos na linguagem de montagem do BIP a seguir, extraia a sua representação em linguagem C (se necessário, preencha o espaço reservado para comentários). 

![Exercício nove](assets/exercicio_9.png)
- Resposta:
<br>``ACC = (A)``
<br>``ACC = ACC + (B)``
<br>``ACC = ACC + (C)``
<br>``(D) = ACC``

![Exercício dez](assets/exercicio_10.png)
- Resposta:
<br>``ACC = (B)``
<br>``ACC = ACC + 1``
<br>``ACC = ACC - (C)``
<br>``(A) = ACC``