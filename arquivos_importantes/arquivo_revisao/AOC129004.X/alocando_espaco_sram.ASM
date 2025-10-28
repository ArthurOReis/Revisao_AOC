.INCLUDE <m328Pdef.inc>

.DSEG ; Segmento da Memória RAM (dados)
.ORG SRAM_START ; 0x0100 para o ATmega328p

    var1: .BYTE 1 ; aloca 1 byte no rótulo var1.
		  ; var1 é o rótulo do endereço (0x0100)
		  ; do byte alocado.

    var2: .BYTE 2 ; aloca 2 bytes a partir do rótulo var2.
		  ; var2 é o rótulo do endereço (0x0101)
		  ; do PRIMEIRO byte alocado.
		  ; O endereço do segundo byte é var2+1 (0x0103)

    var3: .BYTE 1 ; outra variável

.CSEG		  ; Segmento da Mem�ria de Flash (programa)
start:
    ldi r19,15
    sts var1,r19  ; inicializa o endere�o var1 com 15

    rjmp start