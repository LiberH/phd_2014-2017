00003000 <_start>:
    3000:  li    r1,1        ;r1  <- 1
    3004:  ori   r1,r1,49296 ;ri  <- r1 | 49296
    3008:  bl    3010        ;call main
0000300c <loop>:
    300c:  b     300c        ;branch
00003010 <main>:
    3010:  li    r8,29       ;r8  <- 29
    3014:  li    r10,1       ;r10 <- 1
    3018:  mtctr r8          ;ctr <- r8
    301c:  li    r9,1        ;r9  <- 1
    3020:  b     3028        ;branch
    3024:  mr    r9,r3       ;r9  <- r3
    3028:  add   r3,r9,r10   ;r3  <- r9+r10
    302c:  mr    r10,r9      ;r10 <- r9
    3030:  bdnz  3024        ;ctr--,
                             ;branch if ctr!=0
    3034:  blr               ;return
