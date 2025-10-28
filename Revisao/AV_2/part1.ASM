.DSEG
.ORG SRAM_START
    VAR1: .BYTE 4
    VAR2: .BYTE 4
    VAR3: .BYTE 4
 
.CSEG
start:
    
    LDI R16, 0XFF
    STS VAR1+0, R16
    STS VAR1+1, R16
    STS VAR1+2, R16
    LDI R16, 0X01
    STS VAR1+3, R16
    
    LDI R16, 0X01
    STS VAR2+0, R16
    STS VAR2+1, R16
    STS VAR2+2, R16
    STS VAR2+3, R16
    
    LDI XL, LOW(VAR1)
    LDI XH, HIGH(VAR1)
    LDI YL, LOW(VAR2)
    LDI YH, HIGH(VAR2)
    LDI ZL, LOW(VAR3)
    LDI ZH, HIGH(VAR3)
    
    RCALL sub32bits
    
    RJMP start
    
sub32bits:
    ; Salva contexto
    PUSH R0
    PUSH R1
    PUSH R16
    IN R0, SREG
    PUSH R0
    
    CLC
    ; Principal
    