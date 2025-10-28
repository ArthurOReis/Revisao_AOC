; O ponteiro X, Y ou Z é decrementado e depois é usado para acessar o conteúdo de uma posição da memória de dados.
    
start:
    ldi r27, 0x01 ; Byte mais significativo de X (XH)
    ldi r26, 0x0B ; Byte menos significativo de X (XL)
Loop:
    inc r0
    st -X, r0
    rjmp loop