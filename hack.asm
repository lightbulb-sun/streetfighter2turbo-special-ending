hirom

; make the game think you're on difficulty 7
; for the decision tree that determines the type of ending
org $c03394
        lda     #$07
        nop

org $c033bf
        jsr     my_code

; increment the real difficulty, not the difficulty 7 from above
org $c0f4a0
my_code:
        lda     $1c6f
        inc
        cmp     #$08
        rts
