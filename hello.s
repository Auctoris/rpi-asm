.global _start
_start:
    MOV R7, #0x04
    MOV R0, #0x01
    MOV R2, #0x0D
    LDR R1, =string
    SWI 0
    MOV R7, #0x01
    MOV R0, #0x00
    SWI 0
    .data
string:
    .ascii "Hello World!\n"
