; Faça um programa que some duas variáveis de 8 bits: C = A + B
   
.DSEG
.ORG SRAM_START
    A: .BYTE 1
    B: .BYTE 1
    C: .BYTE 1
.CSEG

start:
    
    LDI XL, LOW(A)
    LDI XH, HIGH(A)
    LDI YL, LOW(B)
    LDI YH, HIGH(B)
    LDI ZL, LOW(C)
    LDI ZH, HIGH(C)
    
    LDI R16, 10
    ST X, R16
    LDI R16, 20
    ST Y, R16

soma:
    LD R16, X
    LD R17, Y
    ADD R16, R17
    ST Z, R16
    
    RJMP start