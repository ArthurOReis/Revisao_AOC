; Declare três vetores com 10 posições de 8 bits (V0, V1 e VR).
; Obs.: utilize as diretivas .DSEG e .BYTE

.DSEG
.ORG SRAM_START
    V0: .BYTE 10
    V1: .BYTE 10
    VR: .BYTE 10

.CSEG
 
start:
    
    LDI R16, 10
    LDI R17, 20
   
    LDI XH, HIGH(V0)
    LDI XL, LOW(V0)
    
    LDI YH, HIGH(V1)
    LDI YL, LOW(V1)
    
; Inicialize o V0 com os valores de 10 até 19 e o V1 com valores de 20 até 29.

loop_init:
    
    ST X+, R16
    ST Y+, R17
    INC R16
    INC R17

    CPI R16, 20
    BRNE loop_init
    
; Some os vetores V0 e V1, colocando o resultado no VR.
  
    
    LDI XH, HIGH(V0)
    LDI XL, LOW(V0)
    
    LDI YH, HIGH(V1)
    LDI YL, LOW(V1)
    
    LDI ZH, HIGH(VR)
    LDI ZL, LOW(VR)
    LDI R16, 0
    
loop_soma:
    
    LD R17, X+
    LD R18, Y+
    ADD R17, R17
    ST Z+, R17
    
    INC R16
    CPI R16, 10
    BRNE loop_soma

; Zere os vetores V0 e V1. 
    
    LDI XH, HIGH(V0)
    LDI XL, LOW(V0)
    
    LDI YH, HIGH(V1)
    LDI YL, LOW(V1)

    LDI R16, 0
    CLR R17
    
loop_zera:
    ST X+, R17
    ST Y+, R17
    
    INC R16
    CPI R16, 10
    BRNE loop_zera

    RJMP start