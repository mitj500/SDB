; Macro definition 1
MACRO ADD_MACRO A, B
    ADD A, B
ENDM

; Macro definition 2 with parameters
MACRO MULTIPLY_MACRO X, Y, Z
    MOV AX, X
    MOV BX, Y
    MUL BX
    MOV Z, AX
ENDM

; Another macro definition with more parameters
MACRO LOOP_MACRO COUNT, VALUE
    MOV CX, COUNT
    MOV AX, VALUE
LOOP_START:
    ; Loop body
    ; Instruction to repeat
    DEC CX
    JNZ LOOP_START
ENDM
