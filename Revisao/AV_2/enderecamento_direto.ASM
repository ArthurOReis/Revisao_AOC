; O conteúdo de uma posição da memória de dados é acessada usando seu endereço (direto).
start:
    lds R0, 0x0100
    sts 0x0101, R0
    
    rjmp start