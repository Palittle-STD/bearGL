; bearGL
; made with assembly

section .data
    clear db 0x1B, "[2J", 0x1B, "[H", 0

section .text
    extern _getInput
    extern _cmpInput
    extern _bearAdd
    extern _bearSub
    extern _bearMul
    extern _bearDiv
    extern _printf
    extern _Sleep@4
    global _bearSetXY
    global _bearDelay
    global _bearClear

_bearClear:
    push clear
    call _printf
    add esp, 4
    ret

_bearDelay:
    push eax
    call _Sleep@4
    ret
