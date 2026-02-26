section .data
    msg db "you pressed: %d", 0

section .text
    global _main
    extern _printf, _getInput, _cmpInput

_main:
    call _getInput
    call _cmpInput

    push eax
    push msg
    call _printf
    add esp, 8

    mov eax, 0
    ret
    