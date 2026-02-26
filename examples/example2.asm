section .data
    x dd 4
    y dd 2
    player db 0x1B, "[2J", 0x1B, "[%d;%dH@", 0

section .text
    global _main
    extern _getInput
    extern _cmpInput
    extern _printf

_main:
    push [y]
    push [x]
    push player
    call _printf
    add esp, 12
    
    call _getInput
    call _cmpInput

    cmp eax, 1
    je .go_up
    cmp eax, 2
    je .go_down
    cmp eax, 3
    je .go_left
    cmp eax, 4
    je .go_right
    cmp eax, 67
    je .exit

    jmp _main

.go_up:
    dec [y]
    jmp .update
.go_down:
    inc [y]
    jmp .update
.go_left:
    dec [x]
    jmp .update
.go_right:
    inc [x]
    jmp .update

.update:
    push [y]
    push [x]
    push player
    call _printf
    add esp, 12
    jmp _main

.exit:
    mov eax, 0
    ret