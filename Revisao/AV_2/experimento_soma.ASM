; Faça um programa que some dois números de 8 bits armazenados em registradores
; (R16 e R17), mais uma constante (22) e copie para um terceiro registrador (R18).
; Modifique os valores dos registradores no simulador para verificar o funcionamento.
start:
    LDI R16, 10
    LDI R17, 15
    LDI R18, 22
    
    ADD R18, R16
    ADD R18, R17
    
    RJMP start