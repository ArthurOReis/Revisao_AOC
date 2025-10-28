; O conteúdo de uma posição da memória de dados é acessada usando os ponteiros X, Y ou Z.

start:
    ldi r27, 0x01 ; Byte mais significativo de X (XH)
    ldi r26, 0x00 ; Byte menos significativo de X (XL)
    ld r0, X ; X está apontando o endereço 0x0100
    inc r0
    st X, r0
    
    rjmp start