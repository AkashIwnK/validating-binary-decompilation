    .globl	main
.globl _start
_start:
LFB0:
    
    
    vinsertps $0xa, -16(%rbp), %xmm2, %xmm1
    
    
    ret
LFE0:
