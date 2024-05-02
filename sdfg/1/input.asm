LOOP:   LDA DATA1    ; Load accumulator with DATA1
        ADD DATA2    ; Add DATA2 to accumulator
        STA RESULT   ; Store accumulator value in RESULT
        JMP LOOP     ; Jump back to LOOP

DATA1:  DAT 10       ; Data value 10
DATA2:  DAT 20       ; Data value 20
RESULT: DAT 0        ; Initialize RESULT with 0
