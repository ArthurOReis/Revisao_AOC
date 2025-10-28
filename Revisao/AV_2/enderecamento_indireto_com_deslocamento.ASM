; O endereço do operando é o resultado do conteúdo do registro Y ou Z adicionado ao valor contido em seis bits da palavra de instrução.
; O ponteiro não sofre alteração.

start:
    ldi r29, 0x01 ; Byte mais significativo de Y (YH = r29)
    ldi r28, 0x00 ; Byte menos significativo de Y (YL = r28)
    inc r0
    std Y+2, r0 ; Y = 0x0100 "+2" = 0x0102
    inc r0
    std Y+3, r0 ; Y continua sendo 0x0100. Agora com + 3,
		; a operação acontece no endereço 0x0103